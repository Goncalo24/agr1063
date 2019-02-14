<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contactos.aspx.cs" Inherits="agr_1063.Contactos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container" style="background-color: #C0C0C0;">
        <div style="float:left; width:50%">
            <h1>Contactos</h1>
            <hr align="left" />
            <h3>Chefe Agrupamento</h3>
            <h6>
                <asp:Label ID="lblNome" runat="server" placeholder="Nome" Width="50%"></asp:Label></h6>
            Telemóvel:
            <asp:Label ID="tbTel" runat="server" placeholder="Telemóvel" Width="50%"></asp:Label>
            <br />
            Email:
            <asp:Label ID="tbEmail" runat="server" placeholder="Email" Width="50%"></asp:Label>
            <h3>Lobitos</h3>
            <h6>
                <asp:Label ID="lblNomeLob" runat="server" placeholder="Nome" Width="50%"></asp:Label></h6>
            Telemóvel:
            <asp:Label ID="tbTelLob" runat="server" placeholder="Telemóvel" Width="50%"></asp:Label>
            <br />
            Email:
            <asp:Label ID="tbEmailLob" runat="server" placeholder="Email" Width="50%"></asp:Label>
            <h3>Exploradores</h3>
            <h6>
                <asp:Label ID="lblNomeExp" runat="server" placeholder="Nome" Width="50%"></asp:Label></h6>
            Telemóvel:
            <asp:Label ID="tbTelExp" runat="server" placeholder="Telemóvel" Width="50%"></asp:Label>
            <br />
            Email:
            <asp:Label ID="tbEmailExp" runat="server" placeholder="Email" Width="50%"></asp:Label>
            <h3>Pioneiros</h3>
            <h6>
                <asp:Label ID="lblNomePio" runat="server" placeholder="Nome" Width="50%"></asp:Label></h6>
            Telemóvel:
            <asp:Label ID="tbTelPio" runat="server" placeholder="Telemóvel" Width="50%"></asp:Label>
            <br />
            Email:
            <asp:Label ID="tbEmailPio" runat="server" placeholder="Email" Width="50%"></asp:Label>
            <h3>Caminheiros</h3>
            <h6>
                <asp:Label ID="lblNomeCam" runat="server" placeholder="Nome" Width="50%"></asp:Label></h6>
            Telemóvel:
            <asp:Label ID="tbTelCam" runat="server" placeholder="Telemóvel" Width="50%"></asp:Label>
            <br />
            Email:
            <asp:Label ID="tbEmailCam" runat="server" placeholder="Email" Width="50%"></asp:Label>
            <br />
            <br />
        </div>

        <div style="float:right">
            
        </div>
    </div>
    <br />
    <div class="panel-footer" style="color: white; background-color: black; width: 100%">
        <a href="Transferir.aspx?type=1">Regulamento Interno</a>
        <a href="Contactos.aspx">Contactos</a>
        <h6 style="float: right; margin-top: 3px; margin-bottom: 3px"><%= DateTime.Now.ToString(" dddd, dd, MMMM, yyyy") %></h6>
    </div>
</asp:Content>
