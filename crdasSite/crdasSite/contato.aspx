<%@ Page Language="C#" MasterPageFile="~/principal.Master" AutoEventWireup="true"
    CodeBehind="contato.aspx.cs" Inherits="crdasSite.contato" Title=" Clínica Radiológica Dr. Amantino Soares | Contato " %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type='text/javascript' src='scripts/jquery.simplemodal.js'></script>
    <script type='text/javascript' src='scripts/basic.js'></script>

    <div class="grid_4" id="containerContato">
        <span>Contato</span>
        <br />
        <br />
        <label class="labelCaption">
            Nome</label>
        <asp:TextBox ID="txtNome" runat="server" class="inputText" Style="margin-top: 10px;"></asp:TextBox>
        <br />
        <br />
        <label class="labelCaption">
            E-mail</label>
        <asp:TextBox ID="txtEmail" runat="server" class="inputText" Style="margin-top: 10px;"></asp:TextBox>
        <br />
        <br />
        <label class="labelCaption">
            Telefone</label>
        <asp:TextBox ID="txtTelefone" runat="server" class="inputText" Style="margin-top: 10px;"></asp:TextBox>
        <br />
        <br />
        <label class="labelCaption">
            Mensagem</label>
        <textarea id="txtMensagem" cols="20" rows="2" runat="server"></textarea>
        <div class="btnBox">
            <asp:Button ID="btnLimpar" runat="server" CssClass="btnLimpar" 
                onclick="btnLimpar_Click" />
            <asp:Button ID="btnEnviar" style="position: relative; left: -10px;" CausesValidation="true" 
                runat="server" CssClass="btnEnviar" onclick="btnEnviar_Click" />
        </div>
    </div>
    <div class="grid_5 omega" id="coluna_esq" style="float: right; text-align: left;">
        <span>Central de Atendimento</span>
        <br />
        <br />
        <a id="lnkBasic" href="javascript:void(0);" title="Confira aqui a nossa localização!"><img alt="Confira aqui a nossa localização!" src="images/img_localizacao.jpg" /></a>
        <br />
        <br />
        <label>
            Rua Ferreia Coelho, 225 Praia do Suá
        </label>
        <br />
        <label>20.052-210 | Vitória - ES</label>
        <br />
        <br />
        <label>
            27 3134.9500 | 27 3200.3480
        </label>
        <br />
        <label>atendimento@crdas.com.br</label>
        <br />
        <br />
        <br />
        <span>Horário de Funcionamento</span>
        <label>Segunda a Sexta-feira de 7:00h às 19:00h</label>
        <br />
        <label>Sábado de 8:00h às 16:00h</label>
    </div>
    <!-- modal content -->
    <div id="basic-modal-content">
        <img id="imgMapa" alt="Confira nossa localização." src="images/imgMapa.png" />
    </div>
</asp:Content>
