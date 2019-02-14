<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="agr_1063.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container" style="background-color: #CFCFCF">
        <div class="log-reg">
            <legend>Login</legend>
            <asp:TextBox Style="margin-top: 5%" align="center" ID="txtemail" runat="server" placeholder="User/Email" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox align="center" ID="txtpass" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control">></asp:TextBox>
            <br />
            <asp:Label ForeColor="Black" ID="lblerro" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnlogin" runat="server" Text="Login" class="form-control" OnClick="btnlogin_Click" />
            <br />
            <asp:Button ID="btnregistar" runat="server" Text="Registar" class="form-control" OnClick="btnregistar_Click" />
            <br />
            <br />
            <a style="padding-left: 35%" href="PedirPass.aspx">Recuperar Password</a>
        </div>
        <br />
    </div>
    <div class="panel-footer" style="color: white; background-color: black; position:absolute; border:0; left:0; width:100%">
                <a href="Transferir.aspx?type=1">Regulamento Interno</a>
                <a href="Contactos.aspx">Contactos</a>
                <h6 style="float: right; margin-top: 3px; margin-bottom: 3px"><%= DateTime.Now.ToString(" dddd, dd, MMMM, yyyy") %></h6>
            </div>
</asp:Content>
