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
                <div class="panel-heading" style="background-color: chartreuse">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse1">Físico</a>
                    </h4>
                </div>
                <div id="collapse1" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table>
                                <tr>
                                    <td>Cá defende Máugli dos Bândarlougues.
                                    </td>
                                    <td>
                                        <h6>F1.</h6>
                                        Participo em actividades físicas que me ajudam a ser mais ágil e habilidoso.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Cá muda de pele.
                                    </td>
                                    <td>
                                        <h6>F2.</h6>
                                        Conheço os principais orgãos do meu corpo, sei onde estão localizados e para que servem.
                                    </td>
                                    <td>
                                        <h6>F3.</h6>
                                        Conheço as principais diferenças do corpo das meninas e dos meninos.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Máugli brinca com Cá
                                    </td>
                                    <td>
                                        <h6>F4.</h6>
                                        Sei o que devo e não devo comer e que tenho de descansar.
                                    </td>
                                    <td>
                                        <h6>F5.</h6>
                                        Cuido do meu corpo e do meu aspecto
                                    </td>
                                    <td>
                                        <h6>F6.</h6>
                                        Sei que há comportamentos e produtos que me podem fazer mal.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Afetivo -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: red">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse2">Afetivo</a>
                    </h4>
                </div>
                <div id="collapse2" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table>
                                <tr>
                                    <td>Racxa acolhe Máugli no Covil.
                                    </td>
                                    <td>
                                        <h6>A1.</h6>
                                        Escolho as minhas amizades e dou-me bem com todos.
                                    </td>
                                    <td>
                                        <h6>A2.</h6>
                                        Escuto e respeito os mais velhos, tendo os pais como exemplo.
                                    </td>
                                    <td>
                                        <h6>A3.</h6>
                                        Distingo aquilo que gosto e não gosto e consigo falar sobre isso.
                                    </td>
                                    <td>
                                        <h6>A4.</h6>
                                        Sei que meninos e meninas se comportam de maneira diferente e respeito isso.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Racxa defende Máugli de Xer Cane.
                                    </td>
                                    <td>
                                        <h6>A5.</h6>
                                        Sou capaz de falar daquilo que sinto.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Racxa ama Máugli como ele é.
                                    </td>
                                    <td>
                                        <h6>A6.</h6>
                                        Sei quais são as minhas qualidades e os meus defeitos.
                                    </td>
                                    <td>
                                        <h6>A7.</h6>
                                        Esforço-me por ser melhor.
                                    </td>
                                    <td>
                                        <h6>A8.</h6>
                                        Esforço-me por fazer tudo, mesmo quando tenho medo ou acho que não sou capaz.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Carácter -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color:aqua">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Carácter</a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table>
                                <tr>
                                    <td>Bálu ensina a Lei da Selva.
                                    </td>
                                    <td>
                                        <h6>C1.</h6>
                                        Sei a Lei e as Máximas da Alcateia e percebo o que querem dizer.
                                    </td>
                                    <td>
                                        <h6>C2.</h6>
                                        Tenho em conta a opinião dos mais velhos quando tomo decisões.
                                    </td>
                                    <td>
                                        <h6>C3.</h6>
                                        Participo em actividades que me ajudam a aprender coisas novas.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Bálu ajuda a cumprir a Lei.
                                    </td>
                                    <td>
                                        <h6>C4.</h6>
                                        Sou capaz de falar daquilo que sinto.
                                    </td>
                                    <td>
                                        <h6>C5.</h6>
                                        Não desisto, mesmo quando as tarefas são difíceis.
                                    </td>
                                    <td>
                                        <h6>C6.</h6>
                                        Reconheço que as minhas acções têm consequências.
                                    </td>
                                </tr>
                                <tr>
                                    <td>Bálu orgulha-se de Máugli.
                                    </td>
                                    <td>
                                        <h6>C7.</h6>
                                        Defendo o que me parece certo de forma alegre e calma.
                                    </td>
                                    <td>
                                        <h6>C8.</h6>
                                        Mostro, pelas minhas acções, que conheço a Lei e as Máximas da Alcateia.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
