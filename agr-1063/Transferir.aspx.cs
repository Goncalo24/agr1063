using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Transferir : System.Web.UI.Page
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
                    try
                    {
                        string nome = Request["name"].ToString();

                        string Filpath = Server.MapPath("~/ficheiros/" + nome);
                        System.IO.FileInfo file = new System.IO.FileInfo(Filpath);
                        if (file.Exists)
                        {
                            Response.Clear();
                            Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                            Response.AddHeader("Content-Length", file.Length.ToString());
                            Response.ContentType = "application/octet-stream"; // download […]
                        }
                    }
                    catch(Exception)
                    {
                        return;
                    }
                }
            }
        }
    }
}