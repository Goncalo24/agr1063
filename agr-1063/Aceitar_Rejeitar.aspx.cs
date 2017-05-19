using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;
using System.Net.Mail;

namespace agr_1063
{
    public partial class Aceitar_Rejeitar : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        string nome, email;
        int id;
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
                    GetInf();

                    ListItem primeiro = new ListItem("Selecione o que deseja fazer", "-1");
                    ddlsec.Items.Add(primeiro);

                    ddlsec.Items.Add("Aceitar");
                    ddlsec.Items.Add("Rejeitar");

                    lbl1.Text = "O utilizador " + nome + " fez o pedido de registo.";
                }
            }
            else
            {
                GetInf();
            }
        }

        public void GetInf()
        {
            try
            {
                id = int.Parse(Request["id"].ToString());

                DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE IdUser= " + id);
                if (dados == null) return;

                foreach (DataRow linha in dados.Rows)
                {
                    linha[1] = Server.HtmlDecode(linha[1].ToString());
                    nome = Convert.ToString(linha[1]);
                    linha[4] = Server.HtmlDecode(linha[4].ToString());
                    email = Convert.ToString(linha[4]);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                if (ddlsec.SelectedIndex == 1)
                {
                    bd.executaComando("UPDATE Utilizadores SET Ativo= " + 1 + ", Confirmado= " + 1 + " WHERE IdUser= " + id);

                    using (MailMessage mm = new MailMessage("goncalo-lopes@hotmail.com", email))
                    {

                        string pass = "24101998g";
                        mm.Subject = "Registo 1063-CNE";
                        mm.Body = "O seu registo no nosso WebSite foi aceite.";

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
                else if (ddlsec.SelectedIndex == 2)
                {
                    bd.executaComando("UPDATE Utilizadores SET Confirmado= " + 2 + " WHERE IdUser= " + id);
                }
                else
                {
                    Response.Write("<script>alert('O pedido de adesão vai permanecer pendente');</script>");
                }

                Response.Redirect("Utilizadores.aspx");
            }
            catch (Exception erro)
            {
                return;
            }
        }
    }
}