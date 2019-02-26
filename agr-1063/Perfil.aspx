<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="agr_1063.Perfil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <div class="container" style="background-color: #C0C0C0">
        <table align="center">
            <tbody>
                <tr>
                    <td style="padding: 5px; float:left">
                        <h2>Dados Pessoais</h2> 
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px; float:left">
                        <asp:Label runat="server" Text="Nome: "></asp:Label>
                        <asp:Label ID="lblNome" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbNome" runat="server" Visible="False"></asp:TextBox>
                        <br /><br /><br />
                    </td>
                    <td style="padding: 5px; float:left">
                        <asp:Label ID="lblut" runat="server" Text="User: "></asp:Label>
                        <asp:Label ID="lblUser" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbUser" runat="server" Visible="False"></asp:TextBox>
                        <br /><br /><br />
                    </td>
                     <td style="padding: 5px; float:left">
                        <asp:Label ID="lblPass" Visible="false" runat="server" Text="Palavra Passe: "></asp:Label>
                        <asp:TextBox Visible="false" ID="tbPass" runat="server" TextMode="Password"></asp:TextBox>
                        <br /><br /><br />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px; float:left">
                        <h4>Contactos</h4> 
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px; float:left">
                        <asp:Label runat="server" Text="Email: "></asp:Label>
                        <asp:Label ID="lblEmail" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbEmail" runat="server" Visible="False" TextMode="Email"></asp:TextBox>
                        <br /><br /><br />
                    </td>
                    <td style="padding: 5px; float:left">
                        <asp:Label runat="server" Text="Telemóvel: "></asp:Label>
                        <asp:Label ID="lblTel" runat="server" Text="Label"></asp:Label>
                        <asp:TextBox ID="tbTel" runat="server" Visible="False" TextMode="Number"></asp:TextBox>
                        <br /><br /><br />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px; float:left">
                        <h4>Secção</h4> 
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px; float:left">
                        <asp:Label runat="server" Text="Secção: "></asp:Label>
                        <asp:DropDownList ID="ddlsec" runat="server"  AutoPostBack="false" Enabled="false"></asp:DropDownList>
                        <br /><br /><br />
                    </td>
                    <td style="padding: 5px; float:left">
                        <asp:Label ID="lblTipo" runat="server" Text="Tipo utilizador: "></asp:Label>
                        <asp:DropDownList ID="ddltipo" runat="server"  AutoPostBack="false" Enabled="false"></asp:DropDownList>
                        <br /><br /><br />
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
                <tr>
                    <td style="padding: 5px; float:left">
                        <asp:Button ID="btnAct" runat="server" Text="Desativar/Ativar Utilizador" Visible="false" class="btn btn-primary" />
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
    </div>
</asp:Content>
