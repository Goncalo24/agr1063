<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PedirPass.aspx.cs" Inherits="agr_1063.PedirPass" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container" style="background-color: #CFCFCF">
        <h1 align="left">Recuperar Passsword</h1>
        <hr align="left" />

        Email: <asp:TextBox Style="margin-top: 5%" align="center" ID="txtemail" runat="server" placeholder="Email da sua conta" CssClass="form-control"></asp:TextBox>
        <br />
        <asp:Label ForeColor="Black" ID="lblerro" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="btnRec" runat="server" Text="Enviar Email" class="form-control" OnClick="btnRec_Click"/>
    </div>
</asp:Content>
