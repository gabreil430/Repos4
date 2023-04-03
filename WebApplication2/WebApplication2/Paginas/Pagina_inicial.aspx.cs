using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Paginas
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private MySqlConnection connection;
        private MySqlConnection connection2;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection2 = new MySqlConnection(SiteMaster.ConnectionString);
            ////string ID = Session["IDlogin"].ToString();
            ////string Tipo = Session["Tipologin"].ToString();
            string ID = "3";
            string Tipo = "cuidadores";

            connection2.Open();
            var comando = new MySqlCommand($@"select Nome, Email, Telefone, Nascimento, Sexo, Descrição, Localização, DiasEspecíficos, Domingo, Segunda, Terça, Quarta, Quinta, Sexta, Sábado, Dinheiro, Negociação, TempoDinheiro from {Tipo} where ID= @v1", connection2);
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


                if (Negociação == 1)
                {
                    cbxNegocio.Checked = true;
                }


                if (DiasEspecíficos == 1)
                {
                    cbxDias.Checked = true;
                }

                if (Domingo == 1)
                {
                    CheckBox7.Checked = true;
                }
                if (Segunda == 1)
                {
                    CheckBox1.Checked = true;
                }
                if (Terça == 1)
                {
                    CheckBox2.Checked = true;
                }
                if (Quarta == 1)
                {
                    CheckBox3.Checked = true;
                }
                if (Quinta == 1)
                {
                    CheckBox4.Checked = true;
                }
                if (Sexta == 1)
                {
                    CheckBox5.Checked = true;
                }
                if (Sábado == 1)
                {
                    CheckBox6.Checked = true;
                }


                txtEmail.Text = Email;
                txtTelefone.Text = Telefone;
                lblNascimento.Text = Nascimento;
                lblNome.Text = Nome;
                txtDescricao.Text = Descrição;
                txtLocalizacao.Text = Localização;
                rdogenero.SelectedValue = Sexo;
                txtValor.Text = Dinheiro;

                connection2.Close();
            }
        }

        protected void btnAtualizarPerfil_Click(object sender, EventArgs e)
        {
            //string ID = Session["IDlogin"].ToString();
            //string Tipo = Session["Tipologin"].ToString();
            string ID = "3";
            string Tipo = "cuidadores";
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

            connection.Open();
            var comando1 = new MySqlCommand($@"UPDATE {Tipo} SET `Email`='{txtEmail.Text}',
                                                                    `Telefone`='{txtTelefone.Text}',
                                                                    `Sexo`='{rdogenero.SelectedValue}',
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
                                                                    WHERE ID= @v2", connection);
            comando1.Parameters.Add(new MySqlParameter("@v2", ID));

            comando1.ExecuteNonQuery();
            //SiteMaster.ExibirAlert(this, "Perfil atualizado com sucesso!");
            //Thread.Sleep(5000);
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
            connection.Close();
        }
    }
}