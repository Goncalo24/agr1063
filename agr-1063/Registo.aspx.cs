using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Registo : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegisto_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = Server.HtmlEncode(txtnome.Text);
                string email = Server.HtmlEncode(txtemail.Text);
                string pass = Server.HtmlEncode(txtpass.Text);
                int sec = 5;
                int ativo = 0;

                if (nome == "Maria Arminda Nunes Costa Lopes")
                {
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('O seu registo encontra-se bloqueado'); window.location.href = 'Index.aspx'", true);
                }
                else
                {
                    //bd.AdicionarPais(nome, pass, email, sec, ativo);
                    ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Aguarde pela aprovação do seu registo'); window.location.href = 'Index.aspx'", true);
                }
            }
            catch (Exception erro)
            {
                lblerro.Text = erro.Message;
            }
        }
    }
}