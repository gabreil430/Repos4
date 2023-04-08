using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Paginas
{
    public partial class fazer_comentario : System.Web.UI.Page
    {

        private MySqlConnection connection;
        private MySqlConnection connection2;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection2 = new MySqlConnection(SiteMaster.ConnectionString);
            string ID = Session["IDlogin"].ToString();
            string Tipo = Session["Tipologin"].ToString();
            string ID_dest = Session["IDperfil"].ToString();
            string Tipo_dest = Session["Tipoperfil"].ToString();

            connection.Open();
            var comando = new MySqlCommand($@"select Nome from {Tipo_dest} where ID= @v1", connection);
            comando.Parameters.Add(new MySqlParameter("@v1", ID_dest));
            var reader = comando.ExecuteReader();

            if (reader.Read())
            {
                string Nome = reader.GetString("Nome");
                lblExperiencia.Text = "Nos conte sua experiência com " + Nome + ".";
                lblAvaliar.Text = "Como você avalia este perfil?";
                lblFazer.Text = "Faça um comentário: ";
            }
            connection.Close();
           
        }

        protected void btnPublicar_Click(object sender, EventArgs e)
        {
            string ID = Session["IDlogin"].ToString();
            string Tipo = Session["Tipologin"].ToString();
            string ID_dest = Session["IDperfil"].ToString();
            string Tipo_dest = Session["Tipoperfil"].ToString();

            connection2.Open();
            var comando1 = new MySqlCommand($@"INSERT INTO `comentário`(`Remetente_id`, `Remetente_tipo`, `Destinatário_id`, `Destinatário_tipo`, `Comentário`, `Avaliação` ) VALUES ('{ID}', '{Tipo}', '{ID_dest}', '{Tipo_dest}', '{txtComentario.Text}', '{avaliar.SelectedValue}')", connection2);
            comando1.Parameters.Add(new MySqlParameter("@v2", ID));
            comando1.ExecuteNonQuery();
            connection2.Close();

            SiteMaster.ExibirAlert(this, "Avaliação salva.");

            txtComentario.Text = "";
            avaliar.SelectedValue = "Muito bom";
        }
    }
}