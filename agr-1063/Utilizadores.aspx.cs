using System;
using System.Collections.Generic;
using System.Data;
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

                        ListItem primeiro = new ListItem("Selecione uma Secção", "-1");
                        ddlsec.Items.Add(primeiro);

                        ddlsec.Items.Add("Lobitos");
                        ddlsec.Items.Add("Exploradores");
                        ddlsec.Items.Add("Pioneiros");
                        ddlsec.Items.Add("Caminheiros");

                        atualizaGrelha();
                        atualizaGrelha2();
                        atualizaGrelha3();
                        atualizaGrelha4();
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
                DateTime nasc = DateTime.Parse(tbdata.Text);
                int sec = ddlsec.SelectedIndex;
                //User
                string frst = nome.Split(' ').First();
                string lst = nome.Split(' ').Last();
                string user = lst.ToLower() + '.' + frst.ToLower();
                //Adicionar na base de dados
                bd.AdicionaEscuteiro(nome, user, pass, nasc, sec);

                Response.Write("<script>alert('Utilizador inserido com sucesso')</script>");
                tbNome.Text = string.Empty;
                tbdata.Text = string.Empty;
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
    }
}