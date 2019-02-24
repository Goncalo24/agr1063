using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Recuperar_Password : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            id = int.Parse(Request["id"]);
        }

        protected void btnRec_Click(object sender, EventArgs e)
        {
            string pass;
            string confpass;

            try
            {
                pass = Server.HtmlEncode(txtpass.Text);
                confpass = Server.HtmlEncode(txtconfpass.Text);

                if (pass == confpass)
                    bd.executaComando("UPDATE Utilizadores SET Pass=" + pass + ", PassConf= true WHERE IdUser=" + id);
                else
                    lblerro.Text = "As palavras Passe não coincidem";

            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}