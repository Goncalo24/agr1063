using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;

namespace agr_1063
{
    public partial class Avisos_Sec : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        private int id;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    if (int.Parse(Request["sec"]) == 6)
                    {
                        id = int.Parse(Request["id"].ToString());
                        CarregarNoticias();
                    }
                    else
                        Response.Redirect("Login.aspx");
                }
                id = int.Parse(Request["id"].ToString());
                CarregarNoticias();
            }

            /*HtmlControl masterPageBody = (HtmlControl)Master.FindControl("Body");
            masterPageBody.Style.Remove("background-image");
            masterPageBody.Style.Add("background-image", "/img/" + sec + ".jpg");*/
        }

        protected void CarregarNoticias()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE idAviso = " + id + " ORDER BY idAviso DESC");

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            try
            {
                Image1.ImageUrl = "~/imagens/news/" + id + ".jpg";
                Label1.Text = dados.Rows[0][2].ToString();
                paragraph.InnerText = dados.Rows[0][3].ToString(); 
                Label5.Text = dados.Rows[0][4].ToString();
            }
            catch (Exception)
            {
                return;
            }
        }
    }
}