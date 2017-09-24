using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Faceis : System.Web.UI.Page
    {
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
                    if (int.Parse(Request["sec"]) == 1)
                    {
                        Image1.ImageUrl = "~/img/S_Fran";
                    }
                }
            }
        }
    }
}