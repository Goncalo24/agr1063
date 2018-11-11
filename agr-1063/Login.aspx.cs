using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Login : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            try
            {
                string email = Server.HtmlEncode(txtemail.Text);
                string pass = txtpass.Text;
                DataTable utilizador = bd.login(email, pass);
                if (utilizador == null)
                {
                    lblerro.Text = "Login falhou. Tente novamente.";
                    return;
                }
                //login com sucesso
                Session["id"] = utilizador.Rows[0][0].ToString();
                Session["nome"] = utilizador.Rows[0][1].ToString();
                Session["sec"] = utilizador.Rows[0][6].ToString();
                Session["tipo"] = utilizador.Rows[0][7].ToString();
                bool passconf = bool.Parse(utilizador.Rows[0][10].ToString());
                if (passconf == false)
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Altere a sua password'); window.location.href = 'Perfil.aspx'", true);
                }
                else
                {
                    Response.Redirect("Index.aspx");
                }
            }
            catch (Exception erro)
            {
                lblerro.Text = erro.Message;
            }
        }

        protected void btnregistar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registo.aspx");
        }
    }
}