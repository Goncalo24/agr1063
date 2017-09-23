<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Faceis.aspx.cs" Inherits="agr_1063.Faceis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: #C0C0C0; opacity: 0.9" aria-busy="False">
        <h1>FACEIS</h1>
        <br />
        <div class="panel-group" id="accordion">
            <!-- Fisico -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color:chartreuse">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Físico</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                        minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                        commodo consequat.
                    </div>
                </div>
            </div>
            <!-- Afetivo -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color:red">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Afetivo</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit,
                        sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad
                        minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea
                        commodo consequat.
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
