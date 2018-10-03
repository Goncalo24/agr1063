using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace agr_1063
{
    public partial class Permissoes : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        int id;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["id"] == null)
                {
                    Response.Redirect("Login.aspx");
                }
                id = int.Parse(Request["id"].ToString());
                CarregarDados();
            }
        }
        public void CarregarDados()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE IdUser!=" +id+ " AND Confirmado= 1");

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
                if (int.Parse(linha[0].ToString()) == id)
                {
                    lblNome.Text = linha[1].ToString();

                    if (int.Parse(linha[8].ToString()) == 0)
                    {
                        cb1.Checked = true;
                    }
                    else if (int.Parse(linha[8].ToString()) == 1)
                    {
                        cb2.Checked = true;
                    }
                }
                lstb1.Items.Add(linha[1].ToString());
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            id = int.Parse(Request["id"].ToString());

            if (cb1.Checked == true)
            {
                bd.executaComando("UPDATE Utilizadores SET TipoUser= " + 0 + " WHERE IdUser= " + id);  
            }
            else if (cb2.Checked == true)
            {
                bd.executaComando("UPDATE Utilizadores SET TipoUser= " + 1 + " WHERE IdUser= " + id);  
            }
        }

        protected void cb1_CheckedChanged(object sender, EventArgs e)
        {
            cb2.Checked = !cb2.Checked;
        }

        protected void cb2_CheckedChanged(object sender, EventArgs e)
        {
            cb1.Checked = !cb1.Checked;
        }
    }
}