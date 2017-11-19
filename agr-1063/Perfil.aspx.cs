using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Perfil : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        string strid;
        int userid;
        int id;

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
                    if (Request["id"] == null)
                    {
                        try
                        {
                            userid = int.Parse(Session["id"].ToString());
                            btnEdit.Visible = true;
                        }
                        catch (Exception)
                        {
                            throw;
                        }
                    }
                    else
                    {
                        try
                        {
                            strid = Request["id"].ToString();
                            id = int.Parse(strid);

                            lblut.Visible = false;
                            lblUser.Visible = false;
                            tbUser.Visible = false;
                        }
                        catch (Exception)
                        {

                            throw;
                        }

                        if (id != userid)
                        {
                            btnEdit.Visible = false;
                        }
                        else
                        {
                            btnEdit.Visible = true;
                        }
                    }
                    CarregaDados();
                }
            }
        }

        private void CarregaDados()
        {
            if (id == 0)
            {
                userid = int.Parse(Session["id"].ToString());

                DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE IdUser= " + userid);

                if (dados == null) return;

                foreach (DataRow linha in dados.Rows)
                {
                    linha[1] = Server.HtmlDecode(linha[1].ToString());
                    linha[2] = Server.HtmlDecode(linha[2].ToString());
                    linha[4] = Server.HtmlDecode(linha[4].ToString());
                }

                //Imagem
                Image1.ImageUrl = "~/imagens/perfil/" + 1 + ".jpg";
                //Nome
                lblNome.Text = dados.Rows[0][1].ToString();
                tbNome.Text = dados.Rows[0][1].ToString();
                //User
                lblUser.Text = dados.Rows[0][2].ToString();
                tbUser.Text = dados.Rows[0][2].ToString();
                //Email
                lblEmail.Text = dados.Rows[0][4].ToString();
                tbEmail.Text = dados.Rows[0][4].ToString();
                //Telemóvel
                if (dados.Rows[0][5].ToString() != "0")
                {
                    lblTel.Text = dados.Rows[0][5].ToString();
                }
                else
                    lblTel.Text = "";
                tbTel.Text = dados.Rows[0][5].ToString();
            }
            else
            {
                id = int.Parse(strid);

                DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE IdUser= " + id);

                if (dados == null) return;

                foreach (DataRow linha in dados.Rows)
                {
                    linha[1] = Server.HtmlDecode(linha[1].ToString());
                    linha[4] = Server.HtmlDecode(linha[4].ToString());
                }

                //Imagem
                Image1.ImageUrl = "~/imagens/perfil/" + 1 + ".jpg";
                //Nome
                lblNome.Text = dados.Rows[0][1].ToString();
                tbNome.Text = dados.Rows[0][1].ToString();
                //Email
                lblEmail.Text = dados.Rows[0][4].ToString();
                tbEmail.Text = dados.Rows[0][4].ToString();
                //Telemóvel
                if (dados.Rows[0][5].ToString() != "0")
                {
                    lblTel.Text = dados.Rows[0][5].ToString();
                }
                else
                    lblTel.Text = "";
                tbTel.Text = dados.Rows[0][5].ToString();
            }
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                userid = int.Parse(Session["id"].ToString());
                string nome = Server.HtmlEncode(tbNome.Text);
                string user = Server.HtmlEncode(tbUser.Text);
                string pass = Server.HtmlEncode(tbPass.Text);
                string email = Server.HtmlEncode(tbEmail.Text);
                int tel = 0;
                bool passconf;
                if (tbTel.Text != "")
                {
                    tel = int.Parse(tbTel.Text);
                }
                if (pass != "")
                {
                    passconf = true;

                    bd.AtualizarUtilizador(userid, nome, user, pass, email, tel, passconf);

                    //Nome
                    tbNome.Visible = false;
                    lblNome.Visible = true;
                    //User
                    lblUser.Visible = true;
                    tbUser.Visible = false;
                    //Email
                    lblEmail.Visible = true;
                    tbEmail.Visible = false;
                    //Telemóvel
                    lblTel.Visible = true;
                    tbTel.Visible = false;
                    //Pass
                    lblPass.Visible = false;
                    tbPass.Visible = false;
                    //Butões
                    btnGuardar.Visible = false;
                    btnEdit.Visible = true;

                    lblErro.Text = "";

                    CarregaDados();
                }
                else
                {
                    lblErro.Text = "O campo Palavra Passe não pode ser vazio";
                }
            }
            catch (Exception Erro)
            {
                lblErro.Text = "Não foi possível atualizar os seus dados";
            }
        }

        protected void btnEdit_Click(object sender, EventArgs e)
        {
            //Nome
            lblNome.Visible = false;
            tbNome.Visible = true;
            //User
            lblUser.Visible = false;
            tbUser.Visible = true;
            //Email
            lblEmail.Visible = false;
            tbEmail.Visible = true;
            //Telemóvel
            lblTel.Visible = false;
            tbTel.Visible = true;
            //Pass
            lblPass.Visible = true;
            tbPass.Visible = true;
            //Botões
            btnGuardar.Visible = true;
            btnEdit.Visible = false;
        }
    }
}