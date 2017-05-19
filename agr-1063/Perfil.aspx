<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="agr_1063.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: black">
        <br />
        <table align="center" style="background-color:white;">
            <tbody>
                <tr>
                    <td>
                        <br />
                        <asp:Image ID="Image1" runat="server" />
                    </td>
                    <td style="padding: 5px; float:left">
                        <br /><br /><br />
                        <asp:Label runat="server" Text="Nome: "></asp:Label>
                        <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbNome" runat="server" Visible="False"></asp:TextBox>
                        <br /><br />
                        <asp:Label runat="server" Text="Email: "></asp:Label>
                        <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbEmail" runat="server" Visible="False" TextMode="Email"></asp:TextBox>
                        <br /><br />
                        <asp:Label ID="lblPass" Visible="false" runat="server" Text="Palavra Passe: "></asp:Label>
                        <asp:TextBox Visible="false" ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="padding: 5px; float:left">
                        <br /><br /><br />
                        <asp:Label ID="lblut" runat="server" Text="User: "></asp:Label>
                        <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbUser" runat="server" Visible="False"></asp:TextBox>
                        <br /><br />
                        <asp:Label runat="server" Text="Telemóvel: "></asp:Label>
                        <asp:Label ID="lblTel" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbTel" runat="server" Visible="False" TextMode="Number"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="3" style="padding:5px">
                        <asp:Label ID="lblErro" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="3" style="padding:5px; float:left">
                        <asp:Button ID="btnEdit" runat="server" Text="Editar Perfil" class="btn btn-primary" OnClick="btnEdit_Click" />
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click" Visible="False" />
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
    </div>
</asp:Content>
