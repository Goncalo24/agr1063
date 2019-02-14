using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class PedirPass : System.Web.UI.Page
    {
        private BaseDados bd = new BaseDados();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRec_Click(object sender, EventArgs e)
        {
            try
            {
                string email = txtemail.Text;
                DataTable dados = bd.DevolveConsulta("SELECT IdUser FROM Utilizadores WHERE Email LIKE '%"+txtemail.Text+"%'");
                int id = 0;

                if (dados == null) lblerro.Text = "Este email não se encontra registado";
                id = int.Parse(dados.Rows[0][0].ToString());

                using (MailMessage mm = new MailMessage("goncalo-lopes@hotmail.com", email))
                {
                    string pass = "24101998g";
                    mm.Subject = "Recuperar Password";
                    mm.Body = "Link para Recuperação da Password \n \"http://agr1063.gear.host/Recuperar_Password.aspx?id={"+id+"}/";

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

                bd.executaComando("UPDATE Utilizadores SET PassConf= false WHERE IdUser=" + id);
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}