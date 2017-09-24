<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Faceis.aspx.cs" Inherits="agr_1063.Faceis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="background-color: #C0C0C0; opacity: 0.9" aria-busy="False">
        <h1>FACEIS</h1>
        <br />
        <asp:Image ID="Image1" runat="server" />
        <div class="panel-group" id="accordion">
            <%
                //lobitos
                if (Session["sec"].Equals("1"))
                {%>
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
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Cá defende Máugli dos Bândarlougues.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F1.</h6>
                                        Participo em actividades físicas que me ajudam a ser mais ágil e habilidoso.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Cá muda de pele.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F2.</h6>
                                        Conheço os principais orgãos do meu corpo, sei onde estão localizados e para que servem.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F3.</h6>
                                        Conheço as principais diferenças do corpo das meninas e dos meninos.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Máugli brinca com Cá
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F4.</h6>
                                        Sei o que devo e não devo comer e que tenho de descansar.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F5.</h6>
                                        Cuido do meu corpo e do meu aspecto
                                    </td>
                                    <td style="border: 4px solid white; background-color: forestgreen; padding: 10px;">
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
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Racxa acolhe Máugli no Covil.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A1.</h6>
                                        Escolho as minhas amizades e dou-me bem com todos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A2.</h6>
                                        Escuto e respeito os mais velhos, tendo os pais como exemplo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A3.</h6>
                                        Distingo aquilo que gosto e não gosto e consigo falar sobre isso.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A4.</h6>
                                        Sei que meninos e meninas se comportam de maneira diferente e respeito isso.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Racxa defende Máugli de Xer Cane.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A5.</h6>
                                        Sou capaz de falar daquilo que sinto.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Racxa ama Máugli como ele é.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A6.</h6>
                                        Sei quais são as minhas qualidades e os meus defeitos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A7.</h6>
                                        Esforço-me por ser melhor.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
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
                <div class="panel-heading" style="background-color: aqua">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse3">Carácter</a>
                    </h4>
                </div>
                <div id="collapse3" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: blue; padding: 10px;">Bálu ensina a Lei da Selva.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C1.</h6>
                                        Sei a Lei e as Máximas da Alcateia e percebo o que querem dizer.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C2.</h6>
                                        Tenho em conta a opinião dos mais velhos quando tomo decisões.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C3.</h6>
                                        Participo em actividades que me ajudam a aprender coisas novas.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Bálu ajuda a cumprir a Lei.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C4.</h6>
                                        Cumpro as tarefas que me são dadas, porque sei que isso é importante para todos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C5.</h6>
                                        Não desisto, mesmo quando as tarefas são difíceis.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C6.</h6>
                                        Reconheço que as minhas acções têm consequências.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Bálu orgulha-se de Máugli.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C7.</h6>
                                        Defendo o que me parece certo de forma alegre e calma.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C8.</h6>
                                        Mostro, pelas minhas acções, que conheço a Lei e as Máximas da Alcateia.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Espiritual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: fuchsia">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse4">Espiritual</a>
                    </h4>
                </div>
                <div id="collapse4" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Hati conta a história de Tha.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E1.</h6>
                                        Conheço as primeiras histórias da Bíblia.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E2.</h6>
                                        Sei como Jesus nasceu e que Ele quer ser o meu melhor amigo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E3.</h6>
                                        Sei que a Igreja é uma família a que eu pertenço
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Hati guarda toda a Sabedoria da Selva.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E4.</h6>
                                        Sei que a oração diária é a maneira de eu falar com Jesus.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E5.</h6>
                                        Imito Jesus, porque sei que Ele é um exemplo a seguir.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E6.</h6>
                                        Identifico diferentes religiões
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Máugli aprende com Hati a Sabedoria da Selva.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E7.</h6>
                                        Respeito a Criação de Deus [pessoas e Natureza].
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E8.</h6>
                                        Falo de Jesus aos meus amigos e explico-lhes porque é que Ele é importante para mim.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Intelectual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: orange">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse5">Intelectual</a>
                    </h4>
                </div>
                <div id="collapse5" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Máugli e Bàguirà caçam juntos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I1.</h6>
                                        Proponho à Alcateia temas novos para pesquisar.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I2.</h6>
                                        Sei onde procurar e guardar novas informações.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I3.</h6>
                                        Sou capaz de escolher o que mais gostava de fazer e aprender.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Bàguirà responsabiliza Máugli.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I4.</h6>
                                        Sou desembaraçado e uso as coisas que aprendo para resolver problemas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I5.</h6>
                                        Sei dizer quando há um problema e o que é preciso fazer para o resolver.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Bàguirà defende Máugli na Rocha do Conselho
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I6.</h6>
                                        Gosto de imaginar e de fazer coisas novas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I7.</h6>
                                        Sou capaz de apresentar e explicar aquilo que imagino.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Social -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: gold">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse6">Social</a>
                    </h4>
                </div>
                <div id="collapse6" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Àquêlà orienta as reuniões na Rocha do Conselho
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S1.</h6>
                                        Conheço as regras de boa educação que me fazem dar bem com os outros.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S2.</h6>
                                        Participo da melhor vontade em todas as actividades.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S3.</h6>
                                        Respeito aquilo que é de todos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S4.</h6>
                                        Não me aborreço quando perco nas votações e nos jogos.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Àquêlà ajuda Fao.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S5.</h6>
                                        Procuro ser útil aos outros no meu dia-a-dia.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S6.</h6>
                                        Sou capaz de escutar e dar importância às opiniões dos outros, aguardando a minha vez de falar.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Àquêlà ajuda Máugli a guiar os búfalos
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S7.</h6>
                                        Sou capaz de trabalhar com os outros.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S8.</h6>
                                        Sou amigo dos outros quando sou eu a mandar.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%}
                //Exploradores
                else if (Session["sec"].Equals("2"))
                {%>
            <!-- Fisico -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: chartreuse">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse7">Físico</a>
                    </h4>
                </div>
                <div id="collapse7" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Gosto de desenvolver as minhas capacidades.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F1.</h6>
                                        Pratico actividades físicas em que testo as minhas capacidades e torno-me mais ágil, flexível e desembaraçado.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Conheço-me e aceito as mudanças que ocorrem em mim.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F2.</h6>
                                        Aceito que o meu corpo está a mudar e respeito os diferentes ritmos de desenvolvimento quando me comparo com os outros.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F3.</h6>
                                        Conheço o diferente ritmo de crescimento dos rapazes e raparigas e respeito o espaço próprio de cada um.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Vivo de forma saudável
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F4.</h6>
                                        Sei equilibrar as minhas actividades físicas com o descanso e uma alimentação saudável.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F5.</h6>
                                        Esforço-me por ter bom aspecto e tenho hábitos regulares de higiene que contribuem para a minha saúde.
                                    </td>
                                    <td style="border: 4px solid white; background-color: forestgreen; padding: 10px;">
                                        <h6>F6.</h6>
                                        Identifico e evito comportamentos e substâncias prejudiciais à saúde.
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
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse8">Afetivo</a>
                    </h4>
                </div>
                <div id="collapse8" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Relaciono-me com os outros respeitando as diferenças.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A1.</h6>
                                        Comprometo-me com o bem-estar e crescimento do grupo, mantendo uma relação amigável com os outros elementos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A2.</h6>
                                        Valorizo a minha família e assumo o meu papel no seio da mesma.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A3.</h6>
                                        Expresso interesse e espírito crítico por uma forma de arte.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A4.</h6>
                                        Aceito as diferentes formas de demonstrar sentimentos, nos rapazes e nas raparigas.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Sei gerir as minhas emoções.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A5.</h6>
                                        Reconheço e exprimo as minhas emoções com naturalidade e sem magoar os outros.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Conheço-me e quero ser melhor.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A6.</h6>
                                        Assumo as minhas qualidades e defeitos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A7.</h6>
                                        Reconheço os meus erros e procuro corrigi-los.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A8.</h6>
                                        Empenho-me em ultrapassar as minhas diculdades e melhorar tudo o que tenho de bom.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Carácter -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: aqua">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse9">Carácter</a>
                    </h4>
                </div>
                <div id="collapse9" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: blue; padding: 10px;">Faço escolhas para abrir caminhos
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C1.</h6>
                                        Conheço e compreendo a Lei do Escuta e os Princípios.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C2.</h6>
                                        Assumo as minhas opiniões, participando activamente nas decisões que me dizem respeito.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C3.</h6>
                                        Escolho e participo em actividades que me ajudam a crescer.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Assumo as minhas escolhas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C4.</h6>
                                        Desempenho o papel que me é atribuído dentro dos grupos a que pertenço com responsabilidade e empenho.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C5.</h6>
                                        Não desanimo perante as diculdades e procuro sempre aprender com elas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C6.</h6>
                                        Prevejo as consequências que as minhas acções/decisões têm na vida dos grupos de que faço parte.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Vivo de acordo com as minhas ideias.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C7.</h6>
                                        Defendo as ideias e comportamentos que me parecem correctos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C8.</h6>
                                        Demonstro que os meus comportamentos diários estão de acordo com a Lei do Escuta e os Princípios.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Espiritual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: fuchsia">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse10">Espiritual</a>
                    </h4>
                </div>
                <div id="collapse10" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Procuro conhecer a Igreja de Cristo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E1.</h6>
                                        Conheço e compreendo a história dos heróis que procuraram alcançar a Terra Prometida, a partir da Aliança.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E2.</h6>
                                        Conheço e percebo a mensagem contida nas parábolas e milagres de Jesus Cristo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E3.</h6>
                                        Descubro que somos Igreja e que nela todos temos um papel a desempenhar.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Vivo a Fé Cristã.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E4.</h6>
                                        Sei que me relaciono com Deus sempre que faço oração pessoal e participo na oração comunitária.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E5.</h6>
                                        Integro-me cada vez mais na minha comunidade paroquial, através da catequese, celebrando os sacramentos que a Igreja me propõe.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E6.</h6>
                                        Identifico as principais diferenças e semelhanças entre as religiões.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Trabalho para a paz na Boa Acção.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E7.</h6>
                                        Cuido e protejo a Natureza, consciente de que isso é importante para a vida das pessoas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E8.</h6>
                                        Falo da minha vivência em comunidade e convido outros a participar.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Intelectual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: orange">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse11">Intelectual</a>
                    </h4>
                </div>
                <div id="collapse11" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Procuro saber sempre mais.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I1.</h6>
                                        Procuro descobrir o mundo que me rodeia, a partir das minhas experiências.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I2.</h6>
                                        Conheço e utilizo diferentes meios de recolha da informação.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I3.</h6>
                                        Descubro as minhas aptidões e aprofundo os assuntos que me interessam e podem ser úteis no futuro.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Procuro soluções quando identifico problemas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I4.</h6>
                                        Enfrento situações novas usando o que aprendi.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I5.</h6>
                                        Consigo identificar, de forma organizada, as causas de um problema e propor soluções.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Sou criativo quando apresento aquilo que penso e imagino.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I6.</h6>
                                        Aceito desafios que me fazem imaginar e criar coisas diferentes.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I7.</h6>
                                        Utilizo de modo criativo diferentes formas de expressar ideias e emoções.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Social -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: gold">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse12">Social</a>
                    </h4>
                </div>
                <div id="collapse12" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Gosto de ser bom cidadão.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S1.</h6>
                                        Dou exemplo de cumprimento das regras de boa convivência na comunidade.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S2.</h6>
                                        Descubro a necessidade de participar nos vários grupos onde me integro.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S3.</h6>
                                        Cuido do que é de todos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S4.</h6>
                                        Aceito as derrotas em todas as situações, com respeito e sem desanimar.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Sou tolerante e solidário.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S5.</h6>
                                        Sou sensível às situações de necessidade no meio que me rodeia e procuro ser útil na sua resolução.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S6.</h6>
                                        Sei manter um diálogo, apresentando os meus argumentos com entusiasmo e ouvindo os dos outros.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Sei viver em grupo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S7.</h6>
                                        Reconheço as vantagens de trabalhar em grupo e contribuo com os meus conhecimentos e o meu trabalho.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S8.</h6>
                                        Demonstro que sei orientar respeitando as opiniões dos outros.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%}
                //Pioneiros
                else if (Session["sec"].Equals("3"))
                {%>
            <!-- Fisico -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: chartreuse">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse13">Físico</a>
                    </h4>
                </div>
                <div id="collapse13" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Desempenho.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F1.</h6>
                                        Testo de forma responsável os limites do meu corpo e pratico actividades físicas que me permitem conseguir um desenvolvimento equilibrado.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Auto-conhecimento.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F2.</h6>
                                        Aceito as características próprias do meu corpo e respeito as diferenças físicas entre as pessoas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F3.</h6>
                                        Reconheço que homens e mulheres têm características físicas diferentes e respeito os comportamentos e necessidades que vão surgindo.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Bem-estar físico.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F4.</h6>
                                        Faço escolhas saudáveis a nível da minha alimentação, repouso e actividades físicas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F5.</h6>
                                        Tomo as medidas necessárias para o meu bem-estar físico e ando aprumado.
                                    </td>
                                    <td style="border: 4px solid white; background-color: forestgreen; padding: 10px;">
                                        <h6>F6.</h6>
                                        Conheço os malefícios das substâncias e comportamentos de risco e evito-os.
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
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse14">Afetivo</a>
                    </h4>
                </div>
                <div id="collapse14" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Relacionamento e sensibilidade.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A1.</h6>
                                        Valorizo as minhas relações afectivas e demonstro equilíbrio na gestão de conflitos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A2.</h6>
                                        Comprometo-me com o bem-estar da minha família.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A3.</h6>
                                        Reconheço que existem diversas sensibilidades estéticas e partilho os meus gostos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A4.</h6>
                                        Encaro com naturalidade a minha sexualidade e procuro integrá-la harmoniosamente na minha vida, respeitando-me a mim e aos outros.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Equilíbrio emocional.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A5.</h6>
                                        Ajo de forma ponderada e reflectida, respeitando os sentimentos dos outros.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A6.</h6>
                                        Reconheço quando me excedo e esforço-me por corrigir o meu comportamento.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Auto-estima.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A7.</h6>
                                        Reconheço as características da minha personalidade.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A8.</h6>
                                        Reconheço que erro e comprometo-me a melhorar as minhas características menos positivas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A9.</h6>
                                        Aceito as minhas próprias limitações, esforçando-me sempre por melhorar.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A10.</h6>
                                        Conheço bem as minhas capacidades e invisto no meu desenvolvimento.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Carácter -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: aqua">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse15">Carácter</a>
                    </h4>
                </div>
                <div id="collapse15" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: blue; padding: 10px;">Autonomia
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C1.</h6>
                                        Escolho conscientemente as minhas referências e valores fundamentais.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C2.</h6>
                                        Sou capaz de fazer opções e de reconhecer as suas implicações.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C3.</h6>
                                        Estabeleço para mim, com regularidade, metas a atingir em várias áreas da minha vida.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Responsabilidade
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C4.</h6>
                                        Correspondo à confiança que em mim depositam.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C5.</h6>
                                        Reconheço a importância das minhas tarefas, estabeleço prioridades e respeito-as.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C6.</h6>
                                        Encaro os obstáculos sem desistir de encontrar soluções ou alternativas e reconhecendo as lições a tirar.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C7.</h6>
                                        Assumo as minhas acções, aceitando as consequências das mesmas para mim ou para os grupos a que pertenço.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Coerência
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C8.</h6>
                                        Partilho e defendo aquilo em que acredito de forma serena e fundamentada.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C9.</h6>
                                        Ajo, em cada dia, de acordo com as convicções e referências que vou tomando para mim, tendo consciência do testemunho que dou aos outros.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Espiritual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: fuchsia">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse16">Espiritual</a>
                    </h4>
                </div>
                <div id="collapse16" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Descoberta
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E1.</h6>
                                        Conheço e compreendo a vida dos profetas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E2.</h6>
                                        Conheço e percebo a vida de Jesus com os Apóstolos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E3.</h6>
                                        Reconheço que cada membro da Igreja é diferente e que isso é importante e enriquece a comunidade.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Aprofundamento
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E4.</h6>
                                        Vivo a oração como parte do meu quotidiano e participo nas celebrações comunitárias.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E5.</h6>
                                        Conheço a perspectiva da Igreja sobre os temas principais a partir da fundamentação Bíblica.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E6.</h6>
                                        Aprofundo as razões da minha fé no contacto com as outras religiões.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Serviço
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E7.</h6>
                                        Defendo a vida humana como um valor absoluto.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E8.</h6>
                                        Sei o que é ser “Sal da Terra e Luz do Mundo” e ponho-me ao serviço dos outros.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Intelectual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: orange">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse17">Intelectual</a>
                    </h4>
                </div>
                <div id="collapse17" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Procura do conhecimento
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I1.</h6>
                                        Procuro sempre aumentar os meus conhecimentos, diversicando as vivências.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I2.</h6>
                                        Sei onde procurar a informação e selecciono-a de acordo com as necessidades.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I3.</h6>
                                        Conheço as minhas aptidões, sou capaz de optar por uma área profissional ou de estudo e identificar outros domínios de interesse pessoal.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Resolução de problemas
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I4.</h6>
                                        Sei avaliar as experiências que vivo e utilizo o que aprendo de forma criativa nas novas situações que enfrento.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I5.</h6>
                                        Analiso problemas, proponho soluções e escolho a mais adequada.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Criatividade e Expressão
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I6.</h6>
                                        Assumo o desao de criar ideias e projectos inovadores em que relaciono os meus conhecimentos e gostos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I7.</h6>
                                        Apresento ideias e emoções de forma criativa, explorando diferentes técnicas e meios e adequando-as a quem me dirijo.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Social -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: gold">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse18">Social</a>
                    </h4>
                </div>
                <div id="collapse18" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Exercer activamente cidadania
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S1.</h6>
                                        Conheço os meus deveres e direitos e promovo que, à minha volta, os outros os conheçam.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S2.</h6>
                                        Participo activamente nas comunidades em que me insiro, intervindo na promoção de causas comuns.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S3.</h6>
                                        Quando perco uma votação, aceito a decisão e trabalho nesse sentido.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Solidariedade e tolerância
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S4.</h6>
                                        Identifico situações em que posso ser útil na resolução ou minimização de um problema social.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S5.</h6>
                                        Participo, sozinho ou em equipa, na resolução ou minimização de um problema social.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S6.</h6>
                                        Exponho as minhas ideias, respeitando e valorizando as dos outros.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Interacção e cooperação
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S7.</h6>
                                        Valorizo as diferentes funções no grupo e desempenho o melhor possível aquelas que me são confiadas.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S8.</h6>
                                        Respeito as necessidades do grupo, nunca sobrepondo a minha liderança.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%}
                //Caminheiros
                else if (Session["sec"].Equals("4"))
                {%>

            <!-- Fisico -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: chartreuse">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse19">Físico</a>
                    </h4>
                </div>
                <div id="collapse19" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Desempenho.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F1.</h6>
                                        Praticar actividade física que promova o desenvolvimento e manutenção da agilidade, exibilidade e destreza de forma adequada à sua idade, capacidade e limitações.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Auto-conhecimento
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F2.</h6>
                                        Conhecer e aceitar o desenvolvimento e amadurecimento do seu corpo com naturalidade.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F3.</h6>
                                        Conhecer as características siológicas do corpo masculino e feminino e a sua relação com o comportamento e necessidades individuais.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">Bem-estar físico
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F4.</h6>
                                        Cultivar um estilo de vida saudável e equilibrado – alimentação, actividade física e repouso –, adaptado a cada fase do seu desenvolvimento.
                                    </td>
                                    <td style="border: 4px solid white; background-color: chartreuse; padding: 10px;">
                                        <h6>F5.</h6>
                                        Cuidar e valorizar o seu corpo de acordo com os padrões de saúde, revelando aprumo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: forestgreen; padding: 10px;">
                                        <h6>F6.</h6>
                                        Identificar e evitar, na vida quotidiana, os comportamentos de risco relacionados com a segurança física e consumo de substâncias.
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
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse20">Afetivo</a>
                    </h4>
                </div>
                <div id="collapse20" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Relacionamento e sensibilidade
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A1.</h6>
                                        Valorizar e demonstrar sensibilidade nas suas relações afectivas, de modo consequente com a opção de vida assumida.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A2.</h6>
                                        Respeitar a existência de várias sensibilidades estéticas e artísticas, formando a sua opinião com sentido crítico.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A3.</h6>
                                        Assumir a própria sexualidade aceitando a complementaridade Homem / Mulher e vivê-la como expressão responsável de amor.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Equilíbrio emocional
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A4.</h6>
                                        Ser capaz de identificar, compreender e expressar as suas emoções, tendo em conta o contexto e os sentimentos dos outros.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">Auto-estima
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A5.</h6>
                                        Reconhecer e aceitar as características da sua personalidade, mantendo uma atitude de aperfeiçoamento constante.
                                    </td>
                                    <td style="border: 4px solid white; background-color: red; padding: 10px;">
                                        <h6>A6.</h6>
                                        Valorizar as próprias capacidades, superando limitações e adoptando uma atitude positiva perante a vida.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Carácter -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: aqua">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse21">Carácter</a>
                    </h4>
                </div>
                <div id="collapse21" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: blue; padding: 10px;">Autonomia
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C1.</h6>
                                        Possuir e desenvolver um quadro de valores que são fruto de uma opção consciente.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C2.</h6>
                                        Ser capaz de formular e construir as suas próprias opções, assumindo-as com clareza.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C3.</h6>
                                        Mostrar-se responsável pelo seu desenvolvimento, colocando a si próprio objectivos de progressão pessoal.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Responsabilidade
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C4.</h6>
                                        Demonstrar empenho e vontade de agir, assumindo as suas responsabilidades em todos os projectos que enceta, estabelecendo prioridades e respeitando-as.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C5.</h6>
                                        Demonstrar perseverança nos momentos de dificuldade, procurando ultrapassá-los com optimismo.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C6.</h6>
                                        Ser consequente com as opções que toma, assumindo a responsabilidade pelos seus actos.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">Coerência
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C7.</h6>
                                        Ser consistente e convicto na defesa das suas ideias e valores.
                                    </td>
                                    <td style="border: 4px solid white; background-color: aqua; padding: 10px;">
                                        <h6>C8.</h6>
                                        Dar testemunho, agindo em coerência com o seu sistema de valores.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Espiritual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: fuchsia">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse22">Espiritual</a>
                    </h4>
                </div>
                <div id="collapse22" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Descoberta
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E1.</h6>
                                        Conhecer e compreender o modo como Deus se deu a conhecer à humanidade, propondo-lhe um Projecto de Felicidade Plena [História da Salvação].
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E2.</h6>
                                        Conhecer em profundidade a mensagem e a proposta de Jesus Cristo [Mistério da Encarnação e Mistério Pascal].
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E3.</h6>
                                        Reconhecer que a pertença à Igreja é um sinal de Deus no mundo de hoje [Igreja Sacramento Universal de Salvação].
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Aprofundamento
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E4.</h6>
                                        Aprofundar os hábitos de oração pessoal e assumir-se como membro activo da Igreja na celebração comunitária.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E5.</h6>
                                        Integrar na sua vida os valores do Evangelho, vivendo as propostas da Igreja.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E6.</h6>
                                        Conhecer as principais religiões distinguindo e valorizando a identidade da Igreja Católica.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">Serviço
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E7.</h6>
                                        Testemunhar que a presença de Deus no mundo dignifica a vida humana e a Natureza.
                                    </td>
                                    <td style="border: 4px solid white; background-color: fuchsia; padding: 10px;">
                                        <h6>E8.</h6>
                                        Viver o compromisso Cristão como missão no mundo em todas as dimensões [humanas, sociais, económicas, culturais e políticas].
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Intelectual -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: orange">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse23">Intelectual</a>
                    </h4>
                </div>
                <div id="collapse23" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Procura do conhecimento
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I1.</h6>
                                        Procurar de forma activa e continuada novos saberes e vivências, como forma de contribuir para o seu crescimento pessoal.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I2.</h6>
                                        Conhecer e utilizar formas adequadas de recolha e tratamento de informação e, dentro dessas, distinguir o essencial do acessório.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I3.</h6>
                                        Definir o seu itinerário de formação preocupando-se em mantê-lo actualizado.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Resolução de problemas
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I4.</h6>
                                        Adaptar-se e superar novas situações, avaliando-as à luz de experiências anteriores e conhecimentos adquiridos.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I5.</h6>
                                        Analisar os problemas de forma crítica, sugerindo e aplicando estratégias de resolução dos mesmos.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">Criatividade e Expressão
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I6.</h6>
                                        Ser capaz de utilizar conhecimentos, percepções e intuições na criação de novas ideias e obras, mantendo um espírito aberto e inovador.
                                    </td>
                                    <td style="border: 4px solid white; background-color: orange; padding: 10px;">
                                        <h6>I7.</h6>
                                        Expressar ideias e emoções de forma lógica e criativa, adaptada ao[s] destinatário[s] e utilizando os meios adequados.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

            <!-- Social -->
            <div class="panel panel-default">
                <div class="panel-heading" style="background-color: gold">
                    <h4 class="panel-title">
                        <a data-toggle="collapse" data-parent="#accordion" href="#collapse24">Social</a>
                    </h4>
                </div>
                <div id="collapse24" class="panel-collapse collapse">
                    <div class="panel-body">
                        <div class="table col-sm-4">
                            <table style="color: white">
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Exercer activamente cidadania
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S1.</h6>
                                        Conhecer e exercer os seus direitos e deveres enquanto cidadão.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S2.</h6>
                                        Participar activa e conscientemente nos vários espaços sociais onde se insere, intervindo de uma forma informada, respeitadora e construtiva.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S3.</h6>
                                        Respeitar as regras democráticas e assumir como suas as decisões tomadas colectivamente.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Solidariedade e tolerância
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S4.</h6>
                                        Assumir que é parte da sociedade onde se insere, agindo numa perspectiva de serviço libertador e de construção de futuro.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S5.</h6>
                                        Usar de empatia na forma de comunicar com os outros, demonstrando tolerância e respeito perante outros pontos de vista.
                                    </td>
                                </tr>
                                <tr>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">Interacção e cooperação
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S6.</h6>
                                        Mostrar capacidade de relacionamento e trabalho em equipa, contribuindo activamente para o sucesso do colectivo através do desempenho com competência do seu papel.
                                    </td>
                                    <td style="border: 4px solid white; background-color: gold; padding: 10px;">
                                        <h6>S7.</h6>
                                        Assumir papéis de liderança, de forma equilibrada, tendo em conta as suas necessidades e as do grupo.
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <%}%>
        </div>
    </div>
</asp:Content>