﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="agr_1063.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin:0;">
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
    <div class="container text-center" style="background-color: #F8F8FF; opacity: 1; overflow: auto">
        <h1 style="text-align: center;">Bem Vindo!</h1>
        <br />
        <div class="divcalendar" style="width: 20%; float: left">
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            <br />
            <a href="https://www.facebook.com/people/Os-Amigo-de-Fragosela/100007588891054">Amigos de Fragosela</a>
        </div>
        <div style="float: left; width: 80%">
            <!-- Div para os avisos/noticias -->
         <%:CarregarNoticias() %>  
        </div>
        <br />
    </div>
</asp:Content>
