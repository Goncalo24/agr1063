using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Registo : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegisto_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = Server.HtmlEncode(txtnome.Text);
                string email = Server.HtmlEncode(txtemail.Text);
                string pass = Server.HtmlEncode(txtpass.Text);
                int sec = 5;
                int ativo = 0;

                string sql = "INSERT INTO Utilizadores(Nome, Pass, Email, Seccao, Ativo) VALUES (@nome, cast(HASHBYTES('SHA1',@pass) as varchar), @email, @sec, @ativo);";
                //parâmetros
                List<SqlParameter> parametros = new List<SqlParameter>()
                {
                    new SqlParameter() {ParameterName="@nome",SqlDbType=System.Data.SqlDbType.VarChar,Value= nome},
                    new SqlParameter() {ParameterName="@pass",SqlDbType=System.Data.SqlDbType.VarChar,Value= pass},
                    new SqlParameter() {ParameterName="@email",SqlDbType=System.Data.SqlDbType.VarChar,Value= email},
                    new SqlParameter() {ParameterName="@sec",SqlDbType=System.Data.SqlDbType.Int,Value= sec},
                    new SqlParameter() {ParameterName="@ativo",SqlDbType=System.Data.SqlDbType.Int,Value= ativo}
                };
                bd.ExecutaComando(sql, parametros);

                Response.Write("<script>alert('Aguarde pela aprovação do seu registo');</script>");
            }
            catch (Exception erro)
            {
                lblerro.Text = erro.Message;
            }
        }
    }
}