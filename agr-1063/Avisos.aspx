<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Avisos.aspx.cs" Inherits="agr_1063.Avisos"  ValidateRequest = "false"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center" style="background-color: #C0C0C0; opacity: 0.9" aria-busy="False">
        <h2>Adicionar nova Noticia/Aviso</h2>
        <table align="center" style="align-content: center; text-align: center" bordercolor="WHITE">
            <tbody>
                <tr>
                    <td style="padding: 5px">
                        Titulo:
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox Style="width: 100%" ID="tbTit" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        Descrição:
                    </td>
                    <td style="padding: 5px">
                        <asp:TextBox Style="width: 100%" ID="taDes" runat="server" TextMode="MultiLine" cols="20" Rows="5"></asp:TextBox>
                        <!--<asp:textarea Style="width: 100%" id="taDes" cols="20" rows="5"></aspx:textarea>-->
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        Imagem:
                    </td>
                    <td style="padding: 5px"> 
                        <asp:FileUpload ID="FUim" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        Ficheiro:
                    </td>
                    <td style="padding: 5px">
                        <asp:FileUpload ID="FUfi" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        Secção:
                    </td>
                    <td style="padding: 5px; float: left">
                        <asp:DropDownList ID="ddlsec" runat="server" AutoPostBack="false"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="text-center" style="padding: 5px">
                        <asp:Button ID="btnRegistar" runat="server" Text="Adicionar" class="btn btn-primary" OnClick="btnRegistar_Click" />
                    </td>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
