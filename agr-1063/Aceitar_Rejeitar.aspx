<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Aceitar_Rejeitar.aspx.cs" Inherits="agr_1063.Aceitar_Rejeitar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: #C0C0C0">
        <div class="col-xs-4 col-md-6 text-center">
            <div class="registrationform">
                <legend>Pedido de um novo utilizador</legend>

                <asp:Label ID="lbl1" runat="server" Text="" CssClass="form-control"></asp:Label> 
                <br />
                <asp:DropDownList ID="ddlsec" runat="server" AutoPostBack="false" CssClass="form-control"></asp:DropDownList>
                <br />
                <asp:Button ID="btnConfirmar" runat="server" Text="Confirmar" class="form-control" OnClick="btnConfirmar_Click"/>
            </div>
        </div>
        <br />
    </div>
</asp:Content>
