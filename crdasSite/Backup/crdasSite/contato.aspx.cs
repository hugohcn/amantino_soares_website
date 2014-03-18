using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Xml.Linq;
using Common;

namespace crdasSite
{
    public partial class contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void ApagarCamposAposContato()
        {
            this.txtEmail.Text = string.Empty;
            this.txtMensagem.InnerText = string.Empty;
            this.txtNome.Text = string.Empty;
            this.txtTelefone.Text = string.Empty;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            string campo = string.Empty;

            //Validação da parte do servidor.
            if (string.IsNullOrEmpty(txtNome.Text))
            {
                campo += "Nome\n";
            }
            
            if (string.IsNullOrEmpty(txtEmail.Text))
            {
                campo += "E-mail\n";
            }
            
            if (string.IsNullOrEmpty(txtTelefone.Text))
            {
                campo += "Telefone\n";
            }
            
            if (string.IsNullOrEmpty(txtMensagem.InnerHtml))
            {
                campo += "Mensagem\n";
            }

            //Se não for nulo ou vazio, significa que houve erro.
            if (!string.IsNullOrEmpty(campo))
            {
                ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Seu contato não foi realizado. Verifique o preenchimento dos campos e tente novamente.');", true);
            }
            else
            {
                //Começa a configuração do objeto de envio de e-mail.
                EmailConfig config = new EmailConfig();
                config.Nome = txtNome.Text;
                config.Email1 = txtEmail.Text;
                config.TelefoneContato = txtTelefone.Text;
                config.IsBodyHtml = true;
                string msgHtml = @"
                                                <h3>Novo Contato do Web site!</h3>
                                                <br/><br/><b>Remetente:</b> " + txtEmail.Text + @"
                                                <br/><br/><b>Nome:</b> " + txtNome.Text + @"
                                                <br/><br/><b>Telefone de Contato:</b> " + txtTelefone.Text + @"
                                                <br/><br/><b>Mensagem:</b> " + txtMensagem.InnerHtml;

                config.Mensagem = msgHtml;
                config.Prioridade = PrioridadeEmail.Alta;
                try
                {
                    //Envia e-mail.
                    EmailSender.SendMail(config);
                    this.ApagarCamposAposContato();
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Contato Realizado com Sucesso!');", true);
                }
                catch (Exception eX)
                {
                    ScriptManager.RegisterStartupScript(Page, Page.GetType(), Guid.NewGuid().ToString(), "alert('Erro: Impossível enviar mensagem. Verifique os dados e tente novamente.');", true);
                    Response.Redirect("contato.aspx", false);
                }
            }
        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            this.ApagarCamposAposContato();
        }
    }
}
