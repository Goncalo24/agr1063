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
            int type;
            if (!IsPostBack)
            {
                type = int.Parse(Request["type"].ToString());
                switch (type)
                {
                    case 1:
                        try
                        {
                            string Filpath = Server.MapPath("~/ficheiros/REGULAMENTO_INTERNO.pdf");
                            System.IO.FileInfo file = new System.IO.FileInfo(Filpath);
                            if (file.Exists)
                            {
                                Response.Clear();
                                Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                                Response.AddHeader("Content-Length", file.Length.ToString());
                                Response.ContentType = "application/octet-stream"; // download […]
                            }
                        }
                        catch (Exception)
                        {
                            return;
                        }
                        break;

                    default:
                        if (Session["id"] == null)
                            Response.Redirect("Login.aspx");
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
                            catch (Exception)
                            {
                                return;
                            }
                        }
                        break;
                }
            }
        }
    }
}