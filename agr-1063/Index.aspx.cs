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
            /*else if (Session["sec"].ToString() == "5")
            {
                DataTable idf = bd.DevolveConsulta("SELECT IdFilho FROM Parentesco WHERE IdPai= " + Session["id"]);
                DataTable secf = bd.DevolveConsulta("SELECT Seccao FROM Utilizadores WHERE IdUser=" + idf.ToString());
                dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec=" + Session["sec"] + " AND Sec=" + secf.ToString());
            }*/
            else
                dados = bd.DevolveConsulta("SELECT * FROM Avisos WHERE Sec=6 ORDER BY idAviso DESC");

            if (dados == null)
            {
                conteudo = "<div class='container' style='border - color: #ffffff; background-color: #000000; width: auto; opacity: 1'>";
                conteudo += "<h2>Não tem nenhuma informação disponivel</h2> </ div>";
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
                    conteudo += "<div class='not img'> <img src='Imagens/news/" + dados.Rows[i][0] + ".ico'></div>";
                    conteudo += "<div class='not txt'> <h3 class='not txt H'>" + dados.Rows[i][2].ToString() + "</h3> <p class='not txt Pa'>" + dados.Rows[i][3] + "</p></div>";
                    if (linha[5].ToString() != " " && linha[5].ToString() != null)
                    {
                        conteudo += "<div class='fich'><a href='Transferir.aspx?name=" + Server.UrlEncode(dados.Rows[i][5].ToString()) + "'>Transferir Ficheiro</a></div>";
                    }
                    conteudo += "<div class='data'><h5>" + dados.Rows[i][4].ToString() + "</h5></div></div> <hr style='width:100%; float: left'> <hr />";
                    i++;
                }
                retorno = new HtmlString(conteudo);
                return retorno;
            }
        }
    }
}