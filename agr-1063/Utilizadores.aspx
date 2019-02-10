<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Utilizadores.aspx.cs" Inherits="agr_1063.Utilizadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container text-center" style="background-color: #C0C0C0;" aria-busy="False">
        <h1>Utilizadores</h1>
        <div class="table">
            <asp:GridView ID="GridView1" runat="server" CssClass="table active">
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
        <div class="log-reg">
            <br />
            Nome:<asp:TextBox ID="tbNome" runat="server" placeholder="Nome completo" CssClass="form-control"></asp:TextBox>
            Email:<asp:TextBox ID="tbEmail" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
            Telemóvel:<asp:TextBox ID="tbTel" runat="server" placeholder="Telemóvel" CssClass="form-control"></asp:TextBox>
            Secção:<asp:DropDownList ID="ddlsec" runat="server" AutoPostBack="false" CssClass="form-control"></asp:DropDownList>
            <br />
            <asp:Label ID="Label1" runat="server" Text="" CssClass="form-control" Visible="false"></asp:Label>
            <asp:Button ID="btnRegistar" runat="server" Text="Adicionar" class="form-control" OnClick="btnRegistar_Click" />
        </div>
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
        <div class="log-reg">
            <br />
            Descrição:<asp:TextBox ID="txtDesc" runat="server" placeholder="Nome Secção" class="form-control"></asp:TextBox>
            Dirigente Responsável:<asp:DropDownList ID="ddlChefe" runat="server" AutoPostBack="false" class="form-control"></asp:DropDownList>
            Email:<asp:TextBox ID="txtEmSec" runat="server" placeholder="Email" class="form-control"></asp:TextBox>
            <br />
            <asp:Label ID="Label2" runat="server" Text="" class="form-control" Visible="false"></asp:Label>
            <asp:Button ID="btnRegSec" runat="server" Text="Adicionar" class="form-control" OnClick="btnRegSec_Click" />
        </div>
        <br />
        <br />
        <br />
    </div>
</asp:Content>
