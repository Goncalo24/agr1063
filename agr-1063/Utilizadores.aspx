<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Utilizadores.aspx.cs" Inherits="agr_1063.Utilizadores" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container text-center" style="background-color: #C0C0C0; opacity: 0.9" aria-busy="False">
        <h1>Utilizadores</h1>
        <div class="table col-sm-4">
            <asp:gridview id="GridView1" runat="server" cssclass="table active">
             </asp:gridview>
        </div>
        <a href="#collapse1" data-toggle="collapse">Utilizadores Inativos</a>
        <div id="collapse1" class="collapse" onclick="collapse_Click">
            <div class="table col-sm-4">
                <asp:gridview id="GridView2" runat="server" cssclass="table active">
                </asp:gridview>
            </div>
        </div>
        <br />
        <a href="#collapse2" data-toggle="collapse">Pedidos de Adesão</a>
        <div id="collapse2" class="collapse" onclick="collapse_Click">
            <div class="table col-sm-4">
                <asp:gridview id="GridView3" runat="server" cssclass="table active">
                </asp:gridview>
            </div>
        </div>
        <br />
        <a href="#collapse3" data-toggle="collapse">Registos Rejeitados</a>
        <div id="collapse3" class="collapse" onclick="collapse_Click">
            <div class="table col-sm-4">
                <asp:gridview id="GridView4" runat="server" cssclass="table active">
                </asp:gridview>
            </div>
        </div>
        <br />
        <h2>Adicionar novo Utilizador</h2>
        <table align="center" style="align-content: center; text-align: center" bordercolor="WHITE">
            <tbody>
                <tr>
                    <td style="padding: 5px">Nome:
                    </td>
                    <td style="padding: 5px">
                        <asp:textbox id="tbNome" runat="server"></asp:textbox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        Data de Nascimento:
                    </td>
                    <td style="padding: 5px">
                        <asp:textbox id="tbdata" runat="server" textmode="Date"></asp:textbox>
                    </td>
                </tr>
                <tr>
                    <td style="padding: 5px">
                        Secção:
                    </td>
                    <td style="padding: 5px">
                        <asp:DropDownList ID="ddlsec" runat="server"  AutoPostBack="false"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:label id="Label1" runat="server" text=""></asp:label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="text-center" style="padding: 5px">
                        <asp:button id="btnRegistar" runat="server" text="Adicionar" class="btn btn-primary" OnClick="btnRegistar_Click" />
                    </td>
                </tr>
            </tbody>
        </table>
        <br />
        <br />
    </div>
</asp:Content>
