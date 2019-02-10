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
</asp:Content>
