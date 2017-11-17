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
            //CarregarNoticias();
        }

        public HtmlString CarregarNoticias()
        {
            DataTable dados;
            string conteudo = "";
            HtmlString retorno = null;

            if (Session["sec"] != null)
                dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec= " + Session["sec"] + " ORDER BY idAviso DESC");
            else
                dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec=6 ORDER BY idAviso DESC");

            if (dados == null)
            {
                conteudo = "<div class='container' style='border - color: #ffffff; background-color: #000000; width: auto; opacity: 1'>";
                conteudo += "<h2>Não tem nenhum informação disponivel</h2> </ div>";
                retorno = new HtmlString(conteudo);
                return retorno;
            }
            else
            {
                int i = 0;
                foreach (DataRow linha in dados.Rows)
                {
                    linha[2] = Server.HtmlDecode(linha[2].ToString());
                    linha[3] = Server.HtmlDecode(linha[3].ToString());
                    linha[5] = Server.HtmlDecode(linha[5].ToString());

                    conteudo += "<div class='not'>";
                    conteudo += "<div class='not img'> <img src='Imagens/news/" + dados.Rows[i][0] + ".jpg'></div>";
                    conteudo += "<div class='not txt'> <h3 class='not txt H'>" + dados.Rows[i][2].ToString() + "</h3> <p class='not txt Pa'>" + dados.Rows[i][3] + "</p></div>";
                    if (linha[5].ToString() != " " || linha[5].ToString() != null)
                    {
                        conteudo += "<div><a href='Transferir.aspx?" + Server.UrlEncode("name=" + dados.Rows[i][5]) + "'>Transferir Ficheiro</a</div>";
                    }
                    conteudo += "</div> <hr>";
                    //conteudo += "<table class='not tab'> <tr> <td colspan='2'>  </td> </tr>";
                    //conteudo += "<tr> <td class='not img'>  </td> <td> <p>" + dados.Rows[i][3] + "</p> </td> </tr> </table>  </div> <hr>";
                    i++;
                }
                retorno = new HtmlString(conteudo);
                return retorno;
            }

            //return retorno;

            /*foreach (DataRow linha in dados.Rows)
            {
                
            }*/

            /*//limpar grelha
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
            GridView1.DataBind();*/
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            CarregarNoticias();
        }
    }
}