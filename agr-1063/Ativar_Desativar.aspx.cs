using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Ativar_Desativar : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
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
                    try
                    {
                        string strid = Server.HtmlEncode(Request["id"].ToString());
                        int id = int.Parse(strid);
                        string strop = Server.HtmlEncode(Request["op"].ToString());
                        bool op = bool.Parse(strop);

                        if (op == true)
                            bd.executaComando("UPDATE Utilizadores SET Ativo= " + 0 + " WHERE IdUser= " + id);
                        else
                            bd.executaComando("UPDATE Utilizadores SET Ativo= " + 1 + " WHERE IdUser= " + id);

                        Response.Redirect("Utilizadores.aspx");
                    }
                    catch (Exception)
                    {

                        throw;
                    }
                }
            }
        }
    }
}