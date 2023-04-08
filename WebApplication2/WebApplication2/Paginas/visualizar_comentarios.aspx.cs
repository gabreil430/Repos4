using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Paginas
{
    public partial class visualizar_comentario : System.Web.UI.Page
    {
        private MySqlConnection connection;
        private MySqlConnection connection2;
        protected void Page_Load(object sender, EventArgs e)
        {

            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection2 = new MySqlConnection(SiteMaster.ConnectionString);

            //string ID = Session["IDlogin"].ToString();
            //string Tipo = Session["Tipologin"].ToString();
            string ID_dest = Session["IDperfil"].ToString();
            string Tipo_dest = Session["Tipoperfil"].ToString();

            connection.Open();
            var comando = new MySqlCommand($@"select Avaliação, Comentário, Remetente_id, Remetente_tipo from comentário where Destinatário_id= @v1 and Destinatário_tipo = @v2", connection);
            comando.Parameters.Add(new MySqlParameter("@v1", ID_dest));
            comando.Parameters.Add(new MySqlParameter("@v2", Tipo_dest));
            var reader = comando.ExecuteReader();


            if (reader.Read())
            {
                string Avaliação = reader.GetString("Avaliação");
                string Comentário = reader.GetString("Comentário");
                string Remetente_id = reader.GetString("Remetente_id");
                string Remetente_tipo = reader.GetString("Remetente_tipo");
                lblAvaliacao6.Text = Avaliação;
                txtComentario6.Text = Comentário;

                connection2.Open();
                var comando1 = new MySqlCommand($@"select Nome from {Remetente_tipo} where ID= @v1", connection2);
                comando1.Parameters.Add(new MySqlParameter("@v1", Remetente_id));
                var reader1 = comando1.ExecuteReader();

                if (reader1.Read())
                {
                    string Nome = reader1.GetString("Nome");
                    lblNome6.Text = Nome;
                   
                }
                connection2.Close();
            } 
            connection.Close();

            lblAvaliacao.Text = "Muito bom";
            txtComentario.Text = "Uma senhorinha muito educada e que faz ótimos bolos de cenoura!";
            lblNome.Text = "Sandra Maria";

            lblAvaliacao2.Text = "Bom";
            txtComentario2.Text = "Adoro ela, mas só perco no xadrex.";
            lblNome2.Text = "Fernanda Pereira";

            lblAvaliacao3.Text = "Regular";
            txtComentario3.Text = "Não dá trabalho, mas também não me gera entretenimento.";
            lblNome3.Text = "Giovana Simão";

            lblAvaliacao4.Text = "Ruim";
            txtComentario4.Text = "Não para quieta. Tive que amarrar na cama.";
            lblNome4.Text = "Douglas Gabriel";

            lblAvaliacao5.Text = "Muito ruim";
            txtComentario5.Text = "Me manipulou para fugir e apostar sua aposentadoria no cassino da esquina.";
            lblNome5.Text = "Emilly Vitória";

            lblAvaliacao.ForeColor = Color.DarkGreen;
            lblAvaliacao2.ForeColor = Color.Green;
            lblAvaliacao3.ForeColor = Color.DarkGoldenrod;
            lblAvaliacao4.ForeColor = Color.Orange;
            lblAvaliacao5.ForeColor = Color.Red;

            if (lblAvaliacao6.Text == "Muito bom")
            {
                lblAvaliacao6.ForeColor = Color.DarkGreen;
            }
            if (lblAvaliacao6.Text == "Bom")
            {
                lblAvaliacao6.ForeColor = Color.LightGreen;
            }
            if (lblAvaliacao6.Text == "Regular")
            {
                lblAvaliacao6.ForeColor = Color.DarkGoldenrod;
            }
            if (lblAvaliacao6.Text == "Ruim")
            {
                lblAvaliacao6.ForeColor = Color.Orange;
            }
            if (lblAvaliacao6.Text == "Muito ruim")
            {
                lblAvaliacao6.ForeColor = Color.Red;
            }
        }
    }
}