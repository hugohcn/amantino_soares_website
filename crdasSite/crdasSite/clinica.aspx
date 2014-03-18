<%@ Page Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true"
    CodeBehind="clinica.aspx.cs" Inherits="crdasSite.clinica" Title=" Clínica Radiológica Dr. Amantino Soares | A Clínica " %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link href="css/jcarousel.css" rel="stylesheet" type="text/css" />
    <link href="css/fancybox.css" rel="stylesheet" type="text/css" />
    
    <script src="scripts/jqueryjcarouselmin.js" type="text/javascript"></script>
    <script type="text/javascript" src="/fancybox/jquery.fancybox-1.3.1.pack.js"></script>
    <script src="scripts/FancyBox.js" type="text/javascript" media="screen"></script>
    
    <div class="grid_12" id="containerAClinica">
        <span>A Clínica</span>
        <br />
        <br />
        <div class="blockDescricao">
            <p>
                A Clínica Radiológica Dr. Amantino Soares foi fundada em 1963. Ao longo desses anos,
                a busca permanente pelo aprimoramento no atendimento aos seus clientes e parceiros
                tem norteado o trabalho da equipe de profissionais que atua na Clínica. Um compromisso
                assumido por seus fundadores que permanece presente nas ações da empresa, garantindo
                a respeitabilidade e a confiança de seus clientes.
            </p>
            <p>
                A história da Amantino Soares começou em uma modesta sala localizada no 5º andar
                do Edifício Álvares cabral, no centro de Vitória. O primeiro equipamento adquirido
                foi uma máquina de Raio-X. Para a época, uma inovação tecnológica que veio atender
                à demanda por exames com o uso de imagem. Em 1975, com o crescimento da empresa,
                a sede foi transferida para o bairro Praia do Suá, onde funciona até hoje.
            </p>
            <ul id="mycarousel" class="jcarousel-skin-tango">
                <li>
                    <a id="single_image" href="images/fotos/image1.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image1.jpg" width="75" height="75" alt="" />
                    </a>
                </li>
                <li>
                    <a id="single_image" href="images/fotos/image2.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image3.jpg" width="75" height="75" alt="" />
                    </a>
                </li>
                <li>
                    <a id="single_image" href="images/fotos/image3.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image2.jpg" width="75" height="75" alt="" />                    
                    </a>
                </li>
                <li>
                    <a id="single_image" href="images/fotos/image4.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image4.jpg" width="75" height="75" alt="" />
                    </a>        
                </li>
                <li>
                    <a id="single_image" href="images/fotos/image5.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image5.jpg" width="75" height="75" alt="" /></li>
                    </a>
                <li>
                    <a id="single_image" href="images/fotos/image6.jpg" class="linkItem">
                     <img src="images/thumbs/thumb_image6.jpg" width="75" height="75" alt="" />
                    </a>    
                </li>      
                <li>
                    <a id="single_image" href="images/fotos/image7.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image7.jpg" width="75" height="75" alt="" />
                    </a>
                </li>
                <li>
                    <a id="single_image" href="images/fotos/image8.jpg" class="linkItem">
                        <img src="images/thumbs/thumb_image8.jpg" width="75" height="75" alt="" />
                    </a>        
                </li>
            </ul>
            <p>
                Foi com um trabalho sério, competente e focado no cliente que a Amantino Soares
                cresceu, se modernizou e manteve a qualidade dos seus serviços, tornando-se, assim,
                um dos mais respeitados centros de diagnósticos por imagem do Estado. “Realizamos
                um número bastante significativo de procedimentos por mês. Isso mostra a confiança
                de médicos e pacientes em nosso trabalho”, revela, com orgulho o médico Damião Fernandes
                Soares, sócio e diretor da Clínica Radiológica Dr. Amantino Soares.
            </p>
            <p>
                Recentemente, a Clínica passou por uma ampla reforma física e interna, salas de
                exames foram ampliadas e novos equipamentos de alta resolução foram adquiridos.
                Segundo o diretor, as mudanças promovidas resultaram no aumento da capacidade de
                atendimento; não comprometendo a tradicional qualidade dos serviços. “A idéia é
                aperfeiçoar o serviço e tornar o mais agradável possível à permanência dos pacientes
                nas dependências da Clínica”, conta. Também a parte externa vem recebendo melhorias
                e, em breve, a fachada do prédio ganhará um visual mais arrojado e moderno.
            </p>
        </div>
    </div>
</asp:Content>
