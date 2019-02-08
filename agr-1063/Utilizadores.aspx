<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Utilizadores.aspx.cs" Inherits="agr_1063.Utilizadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
        <div class="container text-center" style="background-color: #C0C0C0;" aria-busy="False">
            <h1>Utilizadores</h1>
            <div class="table">
                <asp:GridView ID="GridView1" runat="server" CssClass="table active" >
                </asp:GridView>
            </div>
            <a href="#collapse1" data-toggle="collapse">Utilizadores Inativos</a>
            <div id="collapse1" class="collapse" onclick="collapse_Click">
                <div class="table col-sm-4">
                    <asp:GridView ID="GridView2" runat="server">
                    </asp:GridView>
                </div>
            </div>
            <br />
            <a href="#collapse2" data-toggle="collapse">Pedidos de Adesão</a>
            <div id="collapse2" class="collapse" onclick="collapse_Click">
                <div class="table col-sm-4">
                    <asp:GridView ID="GridView3" runat="server" CssClass="table active">
                    </asp:GridView>
                </div>
            </div>
            <br />
            <a href="#collapse3" data-toggle="collapse">Registos Rejeitados</a>
            <div id="collapse3" class="collapse" onclick="collapse_Click">
                <div class="table col-sm-4">
                    <asp:GridView ID="GridView4" runat="server" CssClass="table active">
                    </asp:GridView>
                </div>
            </div>
            <hr />
            <br />
            <br />
            <h2>Adicionar novo Utilizador</h2>
            <br />
            Nome:
            <asp:TextBox ID="tbNome" runat="server" placeholder="Nome completo"></asp:TextBox>
            <br />
            Email:
            <asp:TextBox ID="tbEmail" runat="server" placeholder="Email"></asp:TextBox>
            <br />
            Telemóvel:
            <asp:TextBox ID="tbTel" runat="server" placeholder="Telemóvel"></asp:TextBox>
            <br />
            Secção:
            <asp:DropDownList ID="ddlsec" runat="server" AutoPostBack="false"></asp:DropDownList>
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnRegistar" runat="server" Text="Adicionar" class="btn btn-primary" OnClick="btnRegistar_Click" />
            <hr />
            <br />
            <br />
            <h1>Secções</h1>
            <div class="table col-sm-4">
                <asp:GridView ID="GridView5" runat="server" CssClass="table active">
                </asp:GridView>
            </div>
            <br />
            <br />
            <h2>Adicionar Secção</h2>
            <br />
            Descrição:
            <asp:TextBox ID="txtDesc" runat="server" placeholder="Nome Secção"></asp:TextBox>
            <br />
            Dirigente Responsável:
            <asp:DropDownList ID="ddlChefe" runat="server" AutoPostBack="false"></asp:DropDownList>
            <br />
            Email:
            <asp:TextBox ID="txtEmSec" runat="server" placeholder="Email"></asp:TextBox>
            <br />
            Password:
            <asp:TextBox ID="txtPassSec" runat="server" placeholder="Password"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
            <br />
            <asp:Button ID="btnRegSec" runat="server" Text="Adicionar" class="btn btn-primary" OnClick="btnRegSec_Click" />
            <asp:Button ID="btnEdit" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnEdit_Click" Enabled="False" />
            <br />
            <br />
            <br />
        </div>
</asp:Content>
