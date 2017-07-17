<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="agr_1063.Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

    <div class="container text-center" style="background-color: #C0C0C0; opacity: 1">
        <h1 style="text-align: center;">Bem Vindo!</h1>
        <br />
        <!-- Div para os avisos/noticias -->
        <div class="container" style="border-color: #ffffff; background-color: #000000; width: auto; opacity: 1">
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="table" AllowPaging="True" PageSize="5" OnPageIndexChanging="GridView1_PageIndexChanging">
            </asp:GridView>
        </div>
        <br />
    </div>

    <!--<div class="container" style="background-color: #000000; padding-top: 15px">
        <h1 class="text-center" style="color: #ffffff">Bem vindo!</h1>
        <br />
        <div style="float: left; background-color: #4bb41a; opacity: 1; padding: 20px; padding-top: 5px">
            <h3 class="text-center" style="color: #ffffff">Login</h3>
            <br />
            <table bordercolor="WHITE">
                <tbody>
                    <tr>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtemail" runat="server" placeholder="Email ou telemovel"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td style="padding: 5px">
                            <asp:TextBox ID="txtpass" runat="server" placeholder="Password" TextMode="Password"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="padding: 5px">
                            <asp:Label ID="lblerro" runat="server" Text=""></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-center" style="padding: 5px">
                            <asp:Button ID="btnlogin" runat="server" Text="Login" class="btn btn-default" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <br />
            <br />
            <br />
            <br />
        </div>
        <div class="container" style="background-color: #ffffff; width: 2px; float: left;">
        </div>
        <div class="container" style="background-color: #4bb41a; float: right; width: 912px">
            RIGHT
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>-->
    <div class="container" style="background-color: #000000; padding-bottom: 15px">
        <br />
        <footer>
            Copyright   /    Regulamento    /     Suporte
        </footer>
    </div>
</asp:Content>
