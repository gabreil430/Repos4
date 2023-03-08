
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Serilog;


namespace WebApplication2.Paginas
{
    public partial class pagina_de_cadastro : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
        }   


        protected void btnConfirmar_Click(object sender, EventArgs e)
        {
           
            {

                Log.Logger = new LoggerConfiguration()
                    .WriteTo.File("C:\\temp\\myapp.txt",
                    restrictedToMinimumLevel: Serilog.Events.LogEventLevel.Information,
                    rollingInterval: RollingInterval.Hour)
                    .CreateLogger();

                try
                {
           
                    connection.Open();
                    var comando = new MySqlCommand($@"INSERT INTO cuidadores (Nome, Idade, Email, Senha) 
                            VALUES ('{txtNome.Text}' ' ' '{txtSobrenome.Text}', '{txtIdade.Text}', '{txtEmail.Text}', '{txtSenha.Text}')", connection);
                    comando.ExecuteNonQuery();
                    connection.Close();

                    SiteMaster.ExibirAlert(this, "Perfil cadastrado com sucesso!");
                    txtNome.Text = "";
                    Log.Information("Cadastrando novo usuário");
                }

                catch (Exception erro)
                {
                    Log.Error ("Erro ao cadastrar novo usuario" + erro);
                }

                finally

                {
                    Log.Information("Execusão terminada.");
                }
            }
          
        }
    }
}