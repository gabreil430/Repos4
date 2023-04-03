using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Paginas
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            /// <summary>
            /// Exemplo de envio de email C#
            /// Lembre de ativar o POP https://mail.google.com/mail/#settings/fwdandpop
            /// Lembre de ativar o acesso menos seguro https://myaccount.google.com/lesssecureapps (se não for usar TLS)
            /// </summary>
            ///
            // Configure as credenciais do remetente do e-mail
            string remetente = "0000758971@senaimgaluno.com.br";
            string destinatario = "suportetccsenai@gmail.com";
            string senha = "*emilly_K56";

            var smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.EnableSsl = true;
            smtpClient.Timeout = 10000;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Credentials = new NetworkCredential(remetente, senha);

            var mailMessage = new MailMessage();
            mailMessage.From = new MailAddress(remetente);
            mailMessage.To.Add(destinatario);
            mailMessage.Subject = assunto.SelectedValue;
            mailMessage.Body = "Nome: " + txtNome.Text + ", Email: " + txtSeuEmail.Text + ", Mensagem: " + txtMensagem.Text;

            try
            {
                smtpClient.Send(mailMessage);
                Console.WriteLine("Email enviado com sucesso!");
                SiteMaster.ExibirAlert(this, "Email enviado com sucesso!");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Erro ao enviar email: " + ex.Message);
            }
        }
    }
}