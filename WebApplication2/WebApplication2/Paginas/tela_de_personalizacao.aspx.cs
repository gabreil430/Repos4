using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication2.Paginas
{
    public partial class tela_de_personalizacao : System.Web.UI.Page
    {
        private MySqlConnection connection;
        private MySqlConnection connection2;
        private MySqlConnection connection3;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection2 = new MySqlConnection(SiteMaster.ConnectionString);
            connection3 = new MySqlConnection(SiteMaster.ConnectionString);
            string ID = Session["IDlogin"].ToString();
            string Tipo = Session["Tipologin"].ToString();
            //string ID = "3";
            //string Tipo = "cuidadores";


            connection3.Open();
            var comando2 = new MySqlCommand($@"select Descrição, Localização, TempoDinheiro, Dinheiro from {Tipo} where ID= @v1", connection3);
            comando2.Parameters.Add(new MySqlParameter("@v1", ID));
            var reader2 = comando2.ExecuteReader();

            try
            {
                if (reader2.Read())
                {
                        if ((reader2.GetString("Descrição") != null) || (reader2.GetString("Localização") != null) || (reader2.GetString("TempoDinheiro") != null) || (reader2.GetString("Dinheiro") != null))
                        {
                            Response.Redirect("http://localhost:49953/Paginas/Lista_de_perfil");

                        }               
                
                }
            }
            catch 
            {
                connection.Open();
                var comando = new MySqlCommand($@"select Nome, Email, Sexo, Telefone, Nascimento from {Tipo} where ID= @v1", connection);
                comando.Parameters.Add(new MySqlParameter("@v1", ID));
                var reader = comando.ExecuteReader();

                if (reader.Read())
                {
                    string Email = reader.GetString("Email");
                    string Nome = reader.GetString("Nome");
                    string Telefone = reader.GetString("Telefone");
                    string Nascimento = reader.GetString("Nascimento");
                    string Sexo = reader.GetString("Sexo");

                    if (Sexo == "Feminino")
                    {
                        SiteMaster.ExibirAlert(this, "Bem-vinda, " + Nome + "!");
                    }
                    else
                    {
                        SiteMaster.ExibirAlert(this, "Bem-vindo, " + Nome + "!");
                    }

                    lblEmail.Text = Email;
                    lblTelefone.Text = Telefone;
                    lblNascimento.Text = Nascimento;
                    lblNome.Text = Nome;

                    img.ImageUrl = "../img/" + ID + "c.png";
                }
                connection.Close();
            }

            finally
            {
                    connection3.Close();
            }
        }


           





        protected void Confirmar_alteração_Click1(object sender, EventArgs e)
        {
            string ID = Session["IDlogin"].ToString();
            string Tipo = Session["Tipologin"].ToString();
            int dias = 0;
            int d = 0;
            int s1 = 0;
            int t = 0;
            int q1 = 0;
            int q2 = 0;
            int s2 = 0;
            int s3 = 0;
            int neg = 0;

            if (cbxDias.Checked)
            {
                dias = 1;
            }
            if (CheckBox7.Checked)
            {
                d = 1;
            }
            if (CheckBox1.Checked)
            {
                s1 = 1;
            }
            if (CheckBox2.Checked)
            {
                t = 1;
            }
            if (CheckBox3.Checked)
            {
                q1 = 1;
            }
            if (CheckBox4.Checked)
            {
                q2 = 1;
            }
            if (CheckBox5.Checked)
            {
                s2 = 1;

            }
            if (CheckBox6.Checked)
            {
                s3 = 1;
            }

            if (cbxNegocio.Checked)
            {
                neg = 1;
            }

            connection2.Open();

            var comando1 = new MySqlCommand($@"UPDATE {Tipo} SET `Sexo`='{rdogenero.SelectedValue}',
                                                                    `Descrição`='{txtDescricao.Text}',
                                                                    `Localização`='{txtLocalizacao.Text}',
                                                                    `DiasEspecíficos`='{dias}',
                                                                    `Domingo`='{d}',
                                                                    `Segunda`='{s1}',
                                                                    `Terça`='{t}',
                                                                    `Quarta`='{q1}',
                                                                    `Quinta`='{q2}',
                                                                    `Sexta`='{s2}',
                                                                    `Sábado`='{s3}',
                                                                    `Dinheiro`='{txtValor.Text}',
                                                                    `Negociação`='{neg}',
                                                                    `TempoDinheiro`='{moneyt.SelectedValue}'
                                                                    WHERE ID= @v2", connection2);
            comando1.Parameters.Add(new MySqlParameter("@v2", ID));

            comando1.ExecuteNonQuery();
            connection2.Close();


            Response.Redirect("http://localhost:49953/Lista_de_perfil");



        }

        

        protected void img_Click(object sender, ImageClickEventArgs e)
        {

            //string ID = Session["IDlogin"].ToString();
            //string Tipo = Session["Tipologin"].ToString();



            //var caminho = Server.MapPath("~") + "/img";
            //if (file.HasFile)
            //{
            //    if (Tipo == "idosos")
            //    {
            //        file.SaveAs(caminho + "/" + ID + "i.png");
            //    }

            //    if (Tipo == "cuidadores")
            //    {
            //        file.SaveAs(caminho + "/" + ID + "c.png");
            //    }
            //}

            //img.ImageUrl = "img/" + ID + "c.png";




        }

        protected void btnAumentarFonte_Click(object sender, EventArgs e)
        {

        }
    }
}
