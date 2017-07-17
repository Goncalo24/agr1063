using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Index : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();

        protected void Page_Load(object sender, EventArgs e)
        {
            CarregarNoticias();
            
            /*HtmlControl masterPageBody = (HtmlControl)Master.FindControl("Body");
            masterPageBody.Style.Remove("background-image");
            masterPageBody.Style.Add("background-image", "/img/" + sec + ".jpg");*/
        }

        protected void CarregarNoticias()
        {
            DataTable dados;

            if (Session["sec"] != null)
                dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec= " + Session["sec"] + " ORDER BY idAviso DESC");
            else
                dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec=6 ORDER BY idAviso DESC");

            //limpar grelha
            GridView1.Columns.Clear();
            GridView1.ShowHeader = false;

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
            }

            //adicionar coluna ver
            DataColumn cVer = new DataColumn();
            cVer.ColumnName = "ver";
            cVer.DataType = Type.GetType("System.String");
            dados.Columns.Add(cVer);

            //associar datatable
            GridView1.DataSource = dados;
            GridView1.AutoGenerateColumns = false;

            //definir colunas
            //id
            BoundField bfId = new BoundField();
            bfId.DataField = "idAviso";
            //bfId.HeaderText = "ID";
            bfId.Visible = false;
            GridView1.Columns.Add(bfId);

            //imagem
            ImageField imagem = new ImageField();
            imagem.DataImageUrlFormatString = "~/Imagens/news/{0}.jpg";
            imagem.DataImageUrlField = "idAviso";
            //imagem.HeaderText = "Imagem";
            imagem.ControlStyle.Width = 100;
            GridView1.Columns.Add(imagem);

            //nome
            BoundField bfNome = new BoundField();
            bfNome.DataField = "Titulo";
            //bfNome.HeaderText = "Nome";
            GridView1.Columns.Add(bfNome);

            //ver
            HyperLinkField lnkver = new HyperLinkField();
            // lnkcomprar.HeaderText = "Ver";
            lnkver.DataTextField = "ver";
            lnkver.Text = "Ver";
            lnkver.DataNavigateUrlFormatString = "Ver_Aviso.aspx?id={0}&sec={0}";
            lnkver.DataNavigateUrlFields = new string[] { "idAviso", "Sec" };
            GridView1.Columns.Add(lnkver);

            //refresh da gridview
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CarregarNoticias();
        }
    }
}