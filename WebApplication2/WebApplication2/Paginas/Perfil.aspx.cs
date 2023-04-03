using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication2.Paginas
{
    public partial class Perfil : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            string ID = "3";
            string Tipo = "cuidadores";

            connection.Open();
            var comando = new MySqlCommand($@"select Nome, Email, Telefone, Nascimento, Sexo, Descrição, Localização, DiasEspecíficos, Domingo, Segunda, Terça, Quarta, Quinta, Sexta, Sábado, Dinheiro, Negociação, TempoDinheiro from {Tipo} where ID= @v1", connection);
            comando.Parameters.Add(new MySqlParameter("@v1", ID));
            var reader = comando.ExecuteReader();

            if (reader.Read())
            {
                string Email = reader.GetString("Email");
                string Nome = reader.GetString("Nome");
                string Telefone = reader.GetString("Telefone");
                string Nascimento = reader.GetString("Nascimento");
                string Sexo = reader.GetString("Sexo");
                string Descrição = reader.GetString("Descrição");
                string Localização = reader.GetString("Localização");
                int DiasEspecíficos = reader.GetInt32("DiasEspecíficos");
                int Domingo = reader.GetInt32("Domingo");
                int Segunda = reader.GetInt32("Segunda");
                int Terça = reader.GetInt32("Terça");
                int Quarta = reader.GetInt32("Quarta");
                int Quinta = reader.GetInt32("Quinta");
                int Sexta = reader.GetInt32("Sexta");
                int Sábado = reader.GetInt32("Sábado");
                string Dinheiro = reader.GetString("Dinheiro");
                int Negociação = reader.GetInt32("Negociação");
                string TempoDinheiro = reader.GetString("TempoDinheiro");
                string Dias = "";
                string Semana = "";
                string DimDim = "";

                if(Negociação == 1)
                {
                    DimDim = "A negociar";
                }
                else
                {
                    DimDim = Dinheiro + " reais " + TempoDinheiro;
                }

                if(DiasEspecíficos == 1)
                {
                    Dias = "Dias específicos";
                }
                else
                {

                    if (Domingo == 1)
                    {
                        Semana = "Dom ";
                    }
                    if (Segunda == 1)
                    {
                        Semana = Semana + "- Seg ";
                    }
                    if (Terça == 1)
                    {
                        Semana = Semana + "- Ter ";
                    }
                    if (Quarta == 1)
                    {
                        Semana = Semana + "- Quar ";
                    }
                    if (Quinta == 1)
                    {
                        Semana = Semana + "- Quin ";
                    }
                    if (Sexta == 1)
                    {
                        Semana = Semana + "- Sex ";
                    }
                    if (Sábado == 1)
                    {
                        Semana = Semana + "- Sáb ";
                    }
 
                    Dias = Semana;
                }

                

                lblEmail.Text = Email;
                lblTelefone.Text = Telefone;
                lblNascimento.Text = Nascimento;
                lblNome.Text = Nome;
                lblSexo.Text = Sexo;
                lblDescrição.Text = Descrição;
                lblLocalização.Text = Localização;
                lblDias.Text = Dias;
                lblDinheiro.Text = DimDim;    



            }
            connection.Close();



        }

    }
}