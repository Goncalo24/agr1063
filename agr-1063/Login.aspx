<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="agr_1063.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: #C0C0C0;">
        <div class="registrationform">
            <legend>Login </legend>

            <asp:TextBox align="center" ID="txtemail" runat="server" placeholder="User/Email" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:TextBox align="center" ID="txtpass" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control">></asp:TextBox>
            <br />
            <asp:Label ForeColor="Black" ID="lblerro" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnlogin" runat="server" Text="Login" class="form-control" OnClick="btnlogin_Click" />
            <br />
            <asp:HyperLink NavigateUrl="Registo.aspx" runat="server">Registar</asp:HyperLink>
        </div>
        <br />
    </div>
</asp:Content>
