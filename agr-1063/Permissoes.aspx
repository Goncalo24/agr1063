<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Permissoes.aspx.cs" Inherits="agr_1063.Permissoes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center" style="background-color: #C0C0C0; opacity: 0.9" aria-busy="False">
        <div>
            <h2>Atribuir Parentesco</h2>
            <asp:ListBox ID="lstb1" runat="server"></asp:ListBox>
        </div>
        <h2>Alterar Permissões</h2>
        <table align="center">
            <tbody>
                <tr>
                    <td>
                        <asp:Label ID="lblNome" runat="server"></asp:Label>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        Permissões de Edição/Publicacão <asp:CheckBox ID="cb1" runat="server" OnCheckedChanged="cb1_CheckedChanged" AutoPostBack="True" />
                        <br />
                        Permissões de Leitura <asp:CheckBox ID="cb2" runat="server" AutoPostBack="True" OnCheckedChanged="cb2_CheckedChanged" />
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGuardar" runat="server" text="Guardar" class="btn btn-primary" OnClick="btnGuardar_Click"/>
                        <br /><br />                    
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</asp:Content>
