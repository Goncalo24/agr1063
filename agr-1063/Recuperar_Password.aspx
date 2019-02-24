﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Recuperar_Password.aspx.cs" Inherits="agr_1063.Recuperar_Password" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container text-center" style="background-color: #CFCFCF">
        <h1>Recuperar Passsword</h1>
        <div class="log-reg">
            <hr />

            Nova Palavra Passe:<asp:TextBox ID="txtpass" runat="server" placeholder="Palavra Passe nova" CssClass="form-control"></asp:TextBox>
            <br />
            Confirmar Palavra Passe:<asp:TextBox ID="txtconfpass" runat="server" placeholder="Confirmar Palavra Passe" CssClass="form-control"></asp:TextBox>
            <br />
            <asp:Label ForeColor="Black" ID="lblerro" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnRec" runat="server" Text="Enviar Email" class="form-control" OnClick="btnRec_Click" />
            <br />
        </div>
    </div>
    <div class="panel-footer" style="color: white; background-color: black; position: absolute; border: 0; left: 0; width: 100%">
        <a href="Transferir.aspx?type=1">Regulamento Interno</a>
        <a href="Contactos.aspx">Contactos</a>
        <h6 style="float: right; margin-top: 3px; margin-bottom: 3px"><%= DateTime.Now.ToString(" dddd, dd, MMMM, yyyy") %></h6>
    </div>
</asp:Content>
