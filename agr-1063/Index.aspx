<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="agr_1063.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicadores -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Capa 4 slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <!--<img src="img/13119097_1544182592552675_5863353489571651733_n.jpg" />-->
            </div>

            <div class="item">
                <!-- <img src="img/14232419_1249025668476049_4179209235872819757_n.jpg" />-->
            </div>

            <div class="item">
                <!--<img src="img/osu.png" />-->
            </div>

            <div class="item">
                <!--<img src="img/transferir.jpg" />-->
            </div>
        </div>
    </div>
    <br />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center" style="background-color: #C0C0C0; opacity: 1">

        <h1 style="text-align: center;">Bem Vindo!</h1>
        <br />
        <!-- Div para os avisos/noticias -->
         <%:CarregarNoticias() %>  
        <br />
    </div>
</asp:Content>
