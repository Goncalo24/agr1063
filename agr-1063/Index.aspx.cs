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
        }

        protected void CarregarNoticias()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Avisos ORDER BY idAviso DESC");
            // dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec= " + sec + ",5 ORDER BY idAviso DESC");

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

            //comprar
            HyperLinkField lnkcomprar = new HyperLinkField();
           // lnkcomprar.HeaderText = "Ver";
            lnkcomprar.DataTextField = "ver";
            lnkcomprar.Text = "Ver";
            //lnkcomprar.DataNavigateUrlFormatString = "loja.aspx";
            //lnkcomprar.DataNavigateUrlFields = new string[] { "id", "preco" };
            GridView1.Columns.Add(lnkcomprar);

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