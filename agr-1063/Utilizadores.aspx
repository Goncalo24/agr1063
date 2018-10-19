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
        <hr />
        <br />
        <br />
        <h2>Adicionar novo Utilizador</h2>
        <br />
        Nome: <asp:textbox id="tbNome" runat="server" placeholder="Nome completo"></asp:textbox>
        <br />
        Email: <asp:textbox id="tbEmail" runat="server" placeholder="Email"></asp:textbox>  
        <br />
        Telemóvel: <asp:textbox id="tbTel" runat="server" placeholder="Telemóvel"></asp:textbox>         
        <br />
        Secção: <asp:DropDownList ID="ddlsec" runat="server"  AutoPostBack="false"></asp:DropDownList>            
        <br />                
        <asp:label id="Label1" runat="server" text=""></asp:label>        
        <br />            
        <asp:button id="btnRegistar" runat="server" text="Adicionar" class="btn btn-primary" OnClick="btnRegistar_Click" />   
        <hr />   
        <br />
        <br />
        <h1>Secções</h1>
        <div class="table col-sm-4">
            <asp:gridview id="GridView5" runat="server" cssclass="table active">
            </asp:gridview>
        </div>
        <br />
        <br />
        <h2>Adicionar Secção</h2>
        <br />
        Descrição: <asp:textbox id="txtDesc" runat="server" placeholder="Nome Secção"></asp:textbox>
        <br />
        Dirigente Responsável: <asp:DropDownList ID="ddlChefe" runat="server"  AutoPostBack="false"></asp:DropDownList>
        <br />
        Email: <asp:textbox id="txtEmSec" runat="server" placeholder="Email"></asp:textbox>  
        <br />
        Password: <asp:textbox id="txtPassSec" runat="server" placeholder="Password"></asp:textbox>         
        <br />
        <asp:label id="Label2" runat="server" text=""></asp:label>
        <br />
        <asp:button id="btnRegSec" runat="server" text="Adicionar" class="btn btn-primary" OnClick="btnRegSec_Click" />
        <asp:button id="btnEdit" runat="server" text="Guardar" class="btn btn-primary" OnClick="btnEdit_Click" Enabled="False" />
        <br />
        <br />
        <br />
    </div>
</asp:Content>
