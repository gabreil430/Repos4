using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using Serilog;

namespace WebApplication2
{
    public partial class _Default : Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            connection.Open();

            try
            {
                var comando = new MySqlCommand($@"select ID, Email, Senha from cuidadores where Email= @v1", connection);
                comando.Parameters.Add(new MySqlParameter("@v1", txtEmail.Text));
                var reader = comando.ExecuteReader();

                if (reader.Read())
                {
                    int ID = reader.GetInt32("ID");
                    string Email = reader.GetString("Email");
                    string Senha = reader.GetString("Senha");

                    if (txtSenha.Text == Senha)
                    {
                        SiteMaster.ExibirAlert(this, "REDIRECIONADO PORRA!!!");
                    }
                    else
                    {
                        SiteMaster.ExibirAlert(this, "Senha incorreta.");
                        txtSenha.Text = "";
                    }
                }

                else
                {
                    SiteMaster.ExibirAlert(this, "Usuário não encontrado.");
                    txtEmail.Text = "";
                    txtSenha.Text = "";
                }
            }

            catch (Exception erro)
            {
                Log.Error("Erro ao cadastrar novo usuario" + erro);

            }

            finally
            {
                connection.Close();
            }
        }
    }
}