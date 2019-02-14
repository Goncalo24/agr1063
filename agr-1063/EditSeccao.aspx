<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditSeccao.aspx.cs" Inherits="agr_1063.EditSeccao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <div class="container" style="background-color: #CFCFCF">
        <div class="log-reg">
            <legend>Editar Secção</legend>

            Descrição:
            <asp:TextBox ID="txtDesc" runat="server" placeholder="Nome Secção" CssClass="form-control"></asp:TextBox>
            <br />
            Dirigente Responsável:
            <asp:DropDownList ID="ddlChefe" runat="server" AutoPostBack="false" CssClass="form-control"></asp:DropDownList>
            <br />
            Email:
            <asp:TextBox ID="txtEmSec" runat="server" placeholder="Email" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Button ID="btnConfirmar" runat="server" Text="Guardar" class="form-control" OnClick="btnConfirmar_Click" />
        </div>
        <br />
    </div>
     <div class="panel-footer" style="color: white; background-color: black; position: absolute; border: 0; left: 0; width: 100%">
        <a href="Transferir.aspx?type=1">Regulamento Interno</a>
        <a href="Contactos.aspx">Contactos</a>
        <h6 style="float: right; margin-top: 3px; margin-bottom: 3px"><%= DateTime.Now.ToString(" dddd, dd, MMMM, yyyy") %></h6>
    </div>
</asp:Content>
