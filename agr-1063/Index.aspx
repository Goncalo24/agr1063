﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="agr_1063.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin: 0">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicadores -->
            <!-- <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Capa 4 slides 
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="img/carousel/DSC_0487.jpg" />
            </div>

            <div class="item">
                <img src="img/carousel/DSC_0488.jpg" />
            </div>

            <div class="item">
                <img src="img/carousel/DSC_0489.jpg" />
            </div>

            <div class="item">
                <img src="img/carousel/DSC_0490.jpg" />
            </div>
        </div>-->
        </div>
    </div>
    <br />
    <div class="container text-center">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1 style="text-align: center; color: black">Bem Vindo!</h1>
        <br />
        <div style="overflow: auto">
            <!-- Div para os avisos/noticias -->
            <%:CarregarNoticias() %>
        </div>
        <br />
    </div>
    <div class="panel-footer" style="color: white; background-color: black; width: 100%">
        <a href="Transferir.aspx?type=1">Regulamento Interno</a>
        <a href="Contactos.aspx">Contactos</a>
        <h6 style="float: right; margin-top: 3px; margin-bottom: 3px"><%= DateTime.Now.ToString(" dddd, dd, MMMM, yyyy") %></h6>
    </div>
</asp:Content>
