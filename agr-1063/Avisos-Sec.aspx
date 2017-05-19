<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Avisos-Sec.aspx.cs" Inherits="agr_1063.Avisos_Sec" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center" style="background-color: #C0C0C0; opacity: 1">
        <h1 style="text-align: center;">Bem Vindo!</h1>
        <br />
        <!-- Div para os avisos/noticias -->
        <div class="container" style="border-color: #ffffff; background-color: #000000; width: auto; opacity: 1">
            <table>
                <tbody>
                    <tr>
                        <th>
                            <h3><asp:Label ID="Label1" runat="server"></asp:Label></h3>
                        </th>
                        <th style="float:right">
                            <h5><asp:Label ID="Label5" runat="server"></asp:Label></h5>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image1" runat="server" />
                        </td>
                        <td style="padding-left:10px">
                            <!--<asp:Label style="word-break:break-word" ID="Label2" runat="server"></asp:Label>-->
                            <p align="left" id="paragraph" runat="server" style="color: white; word-break:break-all"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>

                    </tr>
                </tbody>
            </table>

            <table>
                <tbody>
                    <tr>
                        <th>
                            <h3><asp:Label ID="Label3" runat="server"></asp:Label></h3>
                        </th>
                    </tr>
                    <tr>
                        <td>
                            <asp:Image ID="Image2" runat="server" />
                        </td>
                        <td style="padding-left:10px">
                            <!--<asp:Label style="word-break:break-word" ID="Label4" runat="server"></asp:Label>-->
                            <p id="p1" runat="server" style="color: white; word-break:break-all"></p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <br />
                        </td>
                        <td>
                            <br />
                        </td>
                    </tr>
                    <tr>

                    </tr>
                </tbody>
            </table>
        </div>
        <br />
    </div>
</asp:Content>
