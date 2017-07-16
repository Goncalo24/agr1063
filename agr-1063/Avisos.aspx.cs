using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.IO;

namespace agr_1063
{
    public partial class Avisos : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        DataTable dados;
        List<string> email = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    ListItem primeiro = new ListItem("Selecione uma secção", "-1");
                    ddlsec.Items.Add(primeiro);

                    ddlsec.Items.Add("Lobitos");
                    ddlsec.Items.Add("Exploradores");
                    ddlsec.Items.Add("Pioneiros");
                    ddlsec.Items.Add("Caminheiros");
                    ddlsec.Items.Add("Agrupamento");
                    ddlsec.Items.Add("Público");

                    dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE Ativo=1 AND Confirmado=1 AND Email IS NOT NULL");
                    if (dados == null) return;

                    foreach (DataRow linha in dados.Rows)
                    {
                        email.Add(linha[4].ToString());
                    }
                }
            }
        }

        protected void btnRegistar_Click(object sender, EventArgs e)
        {
            try
            {
                int sec = ddlsec.SelectedIndex;
                string titulo = Server.HtmlEncode(tbTit.Text);
                string desc = Server.HtmlEncode(taDes.Text);
                DateTime data = DateTime.Now;
                //Adiciona na Base de Dados
                int id = bd.adicionarAviso(sec, titulo, desc, data);
                //guardar a imagem
                if (FUim.HasFile == true)
                {
                    if (FUim.PostedFile.ContentLength > 0)
                    {
                        string caminho = Server.MapPath(@"~\imagens\news");
                        caminho += "\\" + id + ".jpg";
                        FUim.SaveAs(caminho);
                    }
                }
                //guardar o Ficheiro
                if (FUfi.HasFile == true)
                {
                    if (FUfi.PostedFile.ContentLength > 0)
                    {
                        string file = FUfi.FileName;
                        file = Path.ChangeExtension(file, ".pdf");

                        string caminho = Server.MapPath(@"~\ficheiros");
                        caminho += "\\(" + id + ")" + file;
                        FUfi.SaveAs(caminho);
                    }
                }

                for (int i = 0; i < email.Count; i++)
                {
                    using (MailMessage mm = new MailMessage("goncalo-lopes@hotmail.com", email[i]))
                    {
                        string pass = "24101998g";
                        mm.Subject = "Teste Avisos de Atividades";
                        mm.Body = "Este email é unica e exclusivamente para teste. Não resposnder a este email.\n CNE-1063";

                        mm.IsBodyHtml = false;
                        SmtpClient smtp = new SmtpClient();
                        smtp.Host = "smtp.live.com";
                        smtp.EnableSsl = true;
                        NetworkCredential NetworkCred = new NetworkCredential("goncalo-lopes@hotmail.com", pass);
                        smtp.UseDefaultCredentials = true;
                        smtp.Credentials = NetworkCred;
                        smtp.Port = 587;
                        smtp.Send(mm);
                        ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }
        }
    }
}