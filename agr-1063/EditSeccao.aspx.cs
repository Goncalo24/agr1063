using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class EditSeccao : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        int idsec;

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
                    ListItem frst = new ListItem("Selecione um dirigente", "-1");
                    ddlChefe.Items.Add(frst);

                    DataTable dados = bd.DevolveConsulta("SELECT IdUser, Nome FROM Utilizadores WHERE TipoUser=2");
                    int j = 0;

                    foreach (DataRow linha in dados.Rows)
                    {
                        linha[1] = Server.HtmlDecode(linha[1].ToString());

                        ddlChefe.Items.Add(dados.Rows[j][1].ToString());
                        j++;
                    }

                    idsec = int.Parse(Request["idsec"].ToString());

                    DataTable dados2 = bd.DevolveConsulta("SELECT * FROM Seccao WHERE IdSec=" + idsec);
                    if (dados2 == null) return;

                    foreach (DataRow linha in dados2.Rows)
                    {
                        linha[1] = Server.HtmlDecode(linha[1].ToString());
                        linha[3] = Server.HtmlDecode(linha[3].ToString());
                        linha[4] = Server.HtmlDecode(linha[4].ToString());
                    }

                    DataTable dados3 = bd.DevolveConsulta("SELECT Nome FROM Utilizadores WHERE IdUser=" + int.Parse(dados2.Rows[0][2].ToString()));
                    if (dados3 == null) return;

                    foreach (DataRow linha in dados3.Rows)
                    {
                        linha[0] = Server.HtmlDecode(linha[0].ToString());
                    }

                    txtDesc.Text = dados2.Rows[0][1].ToString();
                    ddlChefe.SelectedValue = dados3.Rows[0][0].ToString();
                    txtEmSec.Text = dados2.Rows[0][3].ToString();
                }
            }
        }

        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                string desc = Server.HtmlEncode(txtDesc.Text);

                DataTable dados = bd.DevolveConsulta("SELECT IdUser FROM Utilizadores WHERE TipoUser=2");
                if (dados == null) return;

                int idUser = int.Parse(dados.Rows[ddlChefe.SelectedIndex - 1][0].ToString());
                string email = Server.HtmlEncode(txtEmSec.Text);
                //Atualizar na base de dados
                bd.AtualizarSeccao(idsec, desc, idUser, email);

                Response.Write("<script>alert('Secção Atualizada com sucesso')</script>");
            }
            catch (Exception erro)
            {
                //Label2.Text = "Ocorreu o seguinte erro: " + erro.Message;
                throw;
            }
            Response.Redirect("Utilizadores.aspx");
        }
    }
}