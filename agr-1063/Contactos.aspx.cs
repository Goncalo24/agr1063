using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace agr_1063
{
    public partial class Contactos : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dados = bd.DevolveConsulta("SELECT Nome, Telemovel, Email, Seccao, TipoUser FROM Utilizadores Where TipoUser = 2 OR TipoUser = 3");
            int i = 0, sec = 0;

            foreach (DataRow linha in dados.Rows)
            {
                if (dados.Rows[i][4].ToString() == "3")
                {
                    lblNome.Text = dados.Rows[i][0].ToString();
                    tbTel.Text = dados.Rows[i][1].ToString();
                    tbEmail.Text = dados.Rows[i][2].ToString();
                }

                sec = int.Parse(dados.Rows[i][3].ToString());
                switch (sec)
                {
                    case 0:
                        lblNomeLob.Text = dados.Rows[i][0].ToString();
                        tbTelLob.Text = dados.Rows[i][1].ToString();
                        tbEmailLob.Text = dados.Rows[i][2].ToString();
                        break;
                    case 1:
                        lblNomeExp.Text = dados.Rows[i][0].ToString();
                        tbTel.Text = dados.Rows[i][1].ToString();
                        tbEmail.Text = dados.Rows[i][2].ToString();
                        break;
                    case 2:
                        lblNomePio.Text = dados.Rows[i][0].ToString();
                        tbTel.Text = dados.Rows[i][1].ToString();
                        tbEmail.Text = dados.Rows[i][2].ToString();
                        break;
                    case 3:
                        lblNomeCam.Text = dados.Rows[i][0].ToString();
                        tbTel.Text = dados.Rows[i][1].ToString();
                        tbEmail.Text = dados.Rows[i][2].ToString();
                        break;
                    default:
                        break;
                }
                i++;
            }
        }
    }
}