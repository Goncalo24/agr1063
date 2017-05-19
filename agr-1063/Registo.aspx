﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Registo.aspx.cs" Inherits="agr_1063.Registo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: #C0C0C0">
        <div class="col-xs-4 col-md-6 text-center">
            <div class="registrationform">
                <legend>Registe-se </legend>

                <asp:TextBox align="center" ID="txtnome" runat="server" placeholder="Insira o seu nome" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:TextBox align="center" ID="txtemail" runat="server" placeholder="Insira o seu email" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password" CssClass="form-control"></asp:TextBox>
                <br />
                <asp:Label ID="lblerro" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button ID="btnRegisto" runat="server" Text="Registar" class="form-control" OnClick="btnRegisto_Click"/>
            </div>
        </div>
        <br />
    </div>
</asp:Content>
