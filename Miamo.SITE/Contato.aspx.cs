using Miamo.BLL;
using Miamo.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Miamo.SITE
{
    public partial class Contato : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //monta o conteúdo da mensagem ( DTO )

            EmailDTO objDTO = new EmailDTO();

            objDTO.NomeRemetente = txtNome.Text;

            objDTO.EmailRemetente = txtEmail.Text;

            objDTO.NomeDestinatario = "SITE MIAMO";

            objDTO.EmailDestinatario = "Italoqfs@gmail.com";

            objDTO.Assunto = "Contato via SiteMiamo";

            objDTO.Mensagem = txtMensagem.Text + " - NOME: " + txtNome.Text + " - FONE: " + txtTelefone.Text + " - EMAIL: " + txtEmail.Text;

            //instanciar a classe envia email (BLL)

            EmailBLL objEmail = new EmailBLL();

            try

            {
                objEmail.Enviar(objDTO);

                lblMensagem.Text = "E-mail enviado com Sucesso!";

                txtNome.Text = "";

                txtEmail.Text = "";

                txtTelefone.Text = "";

                txtMensagem.Text = "";

            }

            catch

            {
                lblMensagem.Text = "Erro ao enviar E-mail! Tente novamente mais tarde!";

            }



        }
    }
}