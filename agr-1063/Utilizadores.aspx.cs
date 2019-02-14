using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace agr_1063
{
    public partial class Utilizadores : System.Web.UI.Page
    {
        BaseDados bd = new BaseDados();
        int id;
        int row;

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
                    try
                    {
                        id = int.Parse(Session["id"].ToString());

                        //Utilizadores
                        ListItem primeiro = new ListItem("Selecione uma Secção", "-1");
                        ddlsec.Items.Add(primeiro);

                        DataTable dados = bd.DevolveConsulta("SELECT Descricao FROM Seccao");
                        int i = 0;

                        foreach (DataRow linha in dados.Rows)
                        {
                            linha[0] = Server.HtmlDecode(linha[0].ToString());

                            ddlsec.Items.Add(dados.Rows[i][0].ToString());
                            i++;
                        }

                        //Secção
                        ListItem frst = new ListItem("Selecione um dirigente", "-1");
                        ddlChefe.Items.Add(frst);

                        DataTable dados2 = bd.DevolveConsulta("SELECT IdUser, Nome FROM Utilizadores WHERE TipoUser=2");
                        int j = 0;

                        foreach (DataRow linha in dados2.Rows)
                        {
                            linha[1] = Server.HtmlDecode(linha[1].ToString());

                            ddlChefe.Items.Add(dados2.Rows[j][1].ToString());
                            j++;
                        }

                        atualizaGrelha();
                        atualizaGrelha2();
                        atualizaGrelha3();
                        atualizaGrelha4();
                        atualizaGrelha5();
                    }
                    catch (Exception)
                    {

                        throw;
                    }
                }
            }
        }

        private void atualizaGrelha()
        {
            //DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE IdUser<> " + id + " AND Ativo=1");
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE Ativo=1");
            //limpar grelha
            GridView1.Columns.Clear();

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            //adicionar coluna Ver Perfil   
            DataColumn cPerfil = new DataColumn();
            cPerfil.ColumnName = "Perfil";
            cPerfil.DataType = Type.GetType("System.String");
            dados.Columns.Add(cPerfil);

            //adicionar coluna Permições   
            DataColumn cPermissao = new DataColumn();
            cPermissao.ColumnName = "Permissoes";
            cPermissao.DataType = Type.GetType("System.String");
            dados.Columns.Add(cPermissao);

            //adicionar coluna Desativar
            DataColumn cEditar = new DataColumn();
            cEditar.ColumnName = "Desativar";
            cEditar.DataType = Type.GetType("System.String");
            dados.Columns.Add(cEditar);

            //associar datatable
            GridView1.DataSource = dados;
            GridView1.AutoGenerateColumns = false;

            //definir colunas
            //id
            BoundField bfId = new BoundField();
            bfId.DataField = "IdUser";
            bfId.HeaderText = "ID";
            bfId.Visible = false;
            GridView1.Columns.Add(bfId);

            //nome
            BoundField bfnome = new BoundField();
            bfnome.DataField = "Nome";
            bfnome.HeaderText = "Nome";
            GridView1.Columns.Add(bfnome);

            //user
            BoundField bfuser = new BoundField();
            bfuser.DataField = "UserLog";
            bfuser.HeaderText = "User";
            GridView1.Columns.Add(bfuser);

            //sec
            BoundField bfsec = new BoundField();
            bfsec.DataField = "Seccao";
            bfsec.HeaderText = "Secção";
            GridView1.Columns.Add(bfsec);

            //estado
            BoundField bfestado = new BoundField();
            bfestado.DataField = "Ativo";
            bfestado.HeaderText = "Estado";
            GridView1.Columns.Add(bfestado);

            //Ver Perfil
            HyperLinkField lnkPerfil = new HyperLinkField();
            lnkPerfil.HeaderText = "Ver Perfil";
            lnkPerfil.DataTextField = "Perfil";
            lnkPerfil.Text = "Perfil";
            lnkPerfil.DataNavigateUrlFormatString = "Perfil.aspx?id={0}";
            lnkPerfil.DataNavigateUrlFields = new string[] { "IdUser" };
            GridView1.Columns.Add(lnkPerfil);

            //Editar permições
            HyperLinkField lnkpermissoes = new HyperLinkField();
            lnkpermissoes.HeaderText = "Editar Permissões";
            lnkpermissoes.DataTextField = "Permissoes";
            lnkpermissoes.Text = "Permissões";
            lnkpermissoes.DataNavigateUrlFormatString = "Permissoes.aspx?id={0}";
            lnkpermissoes.DataNavigateUrlFields = new string[] { "IdUser" };
            GridView1.Columns.Add(lnkpermissoes);

            //editar
            HyperLinkField lnkEditar = new HyperLinkField();
            lnkEditar.HeaderText = "Desativar";
            lnkEditar.DataTextField = "Desativar";
            lnkEditar.Text = "Desativar";
            lnkEditar.DataNavigateUrlFormatString = "Ativar_Desativar.aspx?id={0}&op={1}";
            lnkEditar.DataNavigateUrlFields = new string[] { "IdUser", "Ativo" };
            GridView1.Columns.Add(lnkEditar);

            //refresh da gridview
            GridView1.DataBind();
        }

        private void atualizaGrelha2()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE Ativo=0 AND Confirmado=1");
            //limpar grelha
            GridView2.Columns.Clear();

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            //adicionar coluna Desativar
            DataColumn cEditar = new DataColumn();
            cEditar.ColumnName = "Ativar";
            cEditar.DataType = Type.GetType("System.String");
            dados.Columns.Add(cEditar);

            //associar datatable
            GridView2.DataSource = dados;
            GridView2.AutoGenerateColumns = false;

            //definir colunas
            //id
            BoundField bfId = new BoundField();
            bfId.DataField = "IdUser";
            bfId.HeaderText = "ID";
            bfId.Visible = false;
            GridView2.Columns.Add(bfId);

            //nome
            BoundField bfnome = new BoundField();
            bfnome.DataField = "Nome";
            bfnome.HeaderText = "Nome";
            GridView2.Columns.Add(bfnome);

            //user
            BoundField bfuser = new BoundField();
            bfuser.DataField = "UserLog";
            bfuser.HeaderText = "User";
            GridView2.Columns.Add(bfuser);

            //user
            BoundField bfsec = new BoundField();
            bfsec.DataField = "Seccao";
            bfsec.HeaderText = "Secção";
            GridView2.Columns.Add(bfsec);

            //estado
            BoundField bfestado = new BoundField();
            bfestado.DataField = "Ativo";
            bfestado.HeaderText = "Estado";
            GridView2.Columns.Add(bfestado);

            //editar
            HyperLinkField lnkEditar = new HyperLinkField();
            lnkEditar.HeaderText = "Ativar";
            lnkEditar.DataTextField = "Ativar";
            lnkEditar.Text = "Ativar";
            lnkEditar.DataNavigateUrlFormatString = "Ativar_Desativar.aspx?id={0}&op={1}";
            lnkEditar.DataNavigateUrlFields = new string[] { "IdUser", "Ativo" };
            GridView2.Columns.Add(lnkEditar);

            //refresh da gridview
            GridView2.DataBind();
        }

        private void atualizaGrelha3()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE Confirmado=0");
            //limpar grelha
            GridView3.Columns.Clear();

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            //adicionar coluna Desativar
            DataColumn cEditar = new DataColumn();
            cEditar.ColumnName = "Aceitar/Rejeitar";
            cEditar.DataType = Type.GetType("System.String");
            dados.Columns.Add(cEditar);

            //associar datatable
            GridView3.DataSource = dados;
            GridView3.AutoGenerateColumns = false;

            //definir colunas
            //id
            BoundField bfId = new BoundField();
            bfId.DataField = "IdUser";
            bfId.HeaderText = "ID";
            bfId.Visible = false;
            GridView3.Columns.Add(bfId);

            //nome
            BoundField bfnome = new BoundField();
            bfnome.DataField = "Nome";
            bfnome.HeaderText = "Nome";
            GridView3.Columns.Add(bfnome);

            //user
            BoundField bfuser = new BoundField();
            bfuser.DataField = "UserLog";
            bfuser.HeaderText = "User";
            GridView3.Columns.Add(bfuser);

            //user
            BoundField bfsec = new BoundField();
            bfsec.DataField = "Seccao";
            bfsec.HeaderText = "Secção";
            GridView3.Columns.Add(bfsec);

            //estado
            BoundField bfconf = new BoundField();
            bfconf.DataField = "Ativo";
            bfconf.HeaderText = "Estado";
            GridView3.Columns.Add(bfconf);

            //ativar
            HyperLinkField lnkEditar = new HyperLinkField();
            lnkEditar.HeaderText = "Aceitar";
            lnkEditar.DataTextField = "Aceitar/Rejeitar";
            lnkEditar.Text = "Escolher o que fazer";
            lnkEditar.DataNavigateUrlFormatString = "Aceitar_Rejeitar.aspx?id={0}";
            lnkEditar.DataNavigateUrlFields = new string[] { "IdUser" };
            GridView3.Columns.Add(lnkEditar);

            //refresh da gridview
            GridView3.DataBind();
        }

        private void atualizaGrelha4()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Utilizadores WHERE Confirmado=2");
            //limpar grelha
            GridView4.Columns.Clear();

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            //adicionar coluna Desativar
            DataColumn cEditar = new DataColumn();
            cEditar.ColumnName = "Aceitar/Rejeitar";
            cEditar.DataType = Type.GetType("System.String");
            dados.Columns.Add(cEditar);

            //associar datatable
            GridView4.DataSource = dados;
            GridView4.AutoGenerateColumns = false;

            //definir colunas
            //id
            BoundField bfId = new BoundField();
            bfId.DataField = "IdUser";
            bfId.HeaderText = "ID";
            bfId.Visible = false;
            GridView4.Columns.Add(bfId);

            //nome
            BoundField bfnome = new BoundField();
            bfnome.DataField = "Nome";
            bfnome.HeaderText = "Nome";
            GridView4.Columns.Add(bfnome);

            //user
            BoundField bfuser = new BoundField();
            bfuser.DataField = "UserLog";
            bfuser.HeaderText = "User";
            GridView4.Columns.Add(bfuser);

            //user
            BoundField bfsec = new BoundField();
            bfsec.DataField = "Seccao";
            bfsec.HeaderText = "Secção";
            GridView4.Columns.Add(bfsec);

            //estado
            BoundField bfconf = new BoundField();
            bfconf.DataField = "Ativo";
            bfconf.HeaderText = "Estado";
            GridView4.Columns.Add(bfconf);

            //ativar
            HyperLinkField lnkEditar = new HyperLinkField();
            lnkEditar.HeaderText = "Aceitar";
            lnkEditar.DataTextField = "Aceitar/Rejeitar";
            lnkEditar.Text = "Escolher o que fazer";
            lnkEditar.DataNavigateUrlFormatString = "Aceitar_Rejeitar.aspx?id={0}";
            lnkEditar.DataNavigateUrlFields = new string[] { "IdUser" };
            GridView4.Columns.Add(lnkEditar);

            //refresh da gridview
            GridView4.DataBind();
        }

        protected void btnRegistar_Click(object sender, EventArgs e)
        {
            try
            {
                string nome = Server.HtmlEncode(tbNome.Text);
                string pass = "";
                string email = Server.HtmlEncode(tbEmail.Text);
                int tel = int.Parse(Server.HtmlEncode(tbTel.Text));
                int sec = ddlsec.SelectedIndex;
                int ativo = 1;
                //User
                string frst = nome.Split(' ').First();
                string lst = nome.Split(' ').Last();
                string user = lst.ToLower() + '.' + frst.ToLower();
                //Adicionar na base de dados
                bd.AdicionaEscuteiro(nome, user, pass, email, tel, sec, ativo);

                Response.Write("<script>alert('Utilizador inserido com sucesso')</script>");
                tbNome.Text = string.Empty;
                tbEmail.Text = string.Empty;
                tbTel.Text = string.Empty;
                ddlsec.SelectedIndex = -1;
            }
            catch (Exception erro)
            {
                Label1.Text = "Ocorreu o seguinte erro: " + erro.Message;
                return;
            }
            //atualiza Tabela
            atualizaGrelha();
        }

        private void atualizaGrelha5()
        {
            DataTable dados = bd.DevolveConsulta("SELECT * FROM Seccao");
            //limpar grelha
            GridView5.Columns.Clear();

            if (dados == null) return;

            foreach (DataRow linha in dados.Rows)
            {
                linha[1] = Server.HtmlDecode(linha[1].ToString());
                linha[2] = Server.HtmlDecode(linha[2].ToString());
            }

            //associar datatable
            GridView5.DataSource = dados;
            GridView5.AutoGenerateColumns = false;

            //definir colunas
            //adicionar coluna Ver Perfil   
            DataColumn cButton = new DataColumn();
            cButton.ColumnName = "Editar";
            cButton.DataType = Type.GetType("System.String");
            dados.Columns.Add(cButton);
            //id
            BoundField bfId = new BoundField();
            bfId.DataField = "IdSec";
            bfId.HeaderText = "ID";
            bfId.Visible = false;
            GridView5.Columns.Add(bfId);

            //Descrição
            BoundField bfdesc = new BoundField();
            bfdesc.DataField = "Descricao";
            bfdesc.HeaderText = "Secção";
            GridView5.Columns.Add(bfdesc);

            //Dirigente
            BoundField bfdir = new BoundField();
            bfdir.DataField = "DirResp";
            bfdir.HeaderText = "Dirigente";
            GridView5.Columns.Add(bfdir);

            //Email
            BoundField bfemail = new BoundField();
            bfemail.DataField = "Email";
            bfemail.HeaderText = "Email";
            GridView5.Columns.Add(bfemail);

            //Ver Perfil
            HyperLinkField lnkBtn = new HyperLinkField();
            lnkBtn.HeaderText = "Editar";
            lnkBtn.DataTextField = "Editar";
            lnkBtn.Text = "Editar";
            lnkBtn.DataNavigateUrlFormatString = "EditSeccao.aspx?idsec={0}";
            lnkBtn.DataNavigateUrlFields = new string[] { "IdSec" };
            GridView5.Columns.Add(lnkBtn);

            //refresh da gridview
            GridView5.DataBind();
        }

        protected void btnRegSec_Click(object sender, EventArgs e)
        {
            try
            {
                string desc = Server.HtmlEncode(txtDesc.Text);

                DataTable dados = bd.DevolveConsulta("SELECT IdUser FROM Utilizadores WHERE TipoUser=2");
                if (dados == null) return;

                int idUser = int.Parse(dados.Rows[ddlChefe.SelectedIndex-1][0].ToString());
                string email = Server.HtmlEncode(txtEmSec.Text);
                //Adicionar na base de dados
                bd.AdicionaSeccao(desc, idUser, email);

                Response.Write("<script>alert('Secção inserida com sucesso')</script>");
                txtDesc.Text = string.Empty;
                ddlChefe.SelectedIndex = -1;
                txtEmSec.Text = string.Empty;
            }
            catch (Exception erro)
            {
                Label2.Text = "Ocorreu o seguinte erro: " + erro.Message;
                throw;
            }
            //atualiza Tabela
            atualizaGrelha5();
        }
    }
}