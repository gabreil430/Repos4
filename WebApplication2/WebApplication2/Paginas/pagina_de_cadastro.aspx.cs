using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Serilog;
using WebApplication2.Classes;

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
                    Log.Logger = new LoggerConfiguration()
                    .WriteTo.File("C:\\temp\\myapp.txt",
                    restrictedToMinimumLevel: Serilog.Events.LogEventLevel.Information,
                    rollingInterval: RollingInterval.Hour)
                    .CreateLogger();
            int ano = Convert.ToInt32(NasAno.Text);
            int mes = Convert.ToInt32(NasMes.Text);
            try
            {
                connection.Open();

                if (txtSenha.Text != txtConfirmarSenha.Text)
                {
                    SiteMaster.ExibirAlert(this, "As senhas devem ser iguais.");
                }

                if (txtEmail.Text != txtConfirmarEmail.Text)
                {
                    SiteMaster.ExibirAlert(this, "Os emails devem ser iguais.");
                }

                if (2023-ano<18)
                {
                    SiteMaster.ExibirAlert(this, "Cadastro negado (menor de idade).");
                }

                if (2023 - ano > 130)
                {
                    SiteMaster.ExibirAlert(this, "Cadastro negado (idade inválida).");
                }

                if ((mes>12)||(mes<1))
                {
                    SiteMaster.ExibirAlert(this, "Cadastro negado (mês inválido).");
                }

                if (txtNome.Text == "" || txtEmail.Text == "" || txtSenha.Text == "" || txtConfirmarSenha.Text == "" || txtConfirmarEmail.Text == "" || NasDia.Text == "" || NasMes.Text == "" || NasAno.Text == "" || txtTelefone.Text == "" || txtSobrenome.Text == "")
                {
                    SiteMaster.ExibirAlert(this, "Por favor, preencha todos os campos antes de continuar.");
                }

                if((mes < 12) && (2023 - ano <= 130) &&(mes > 1) &&(txtSenha.Text == txtConfirmarSenha.Text)&&(txtEmail.Text == txtConfirmarEmail.Text)&&(2023 - ano >= 18) && (txtNome.Text != "") && (txtEmail.Text != "" )&& (txtSenha.Text != "") && (txtConfirmarSenha.Text != "") && (txtConfirmarEmail.Text != "") && (NasDia.Text != "") && (NasMes.Text != "") && (NasAno.Text != "") && (txtTelefone.Text != "") && (txtSobrenome.Text != ""))
                {
                    if (rdoTipo.SelectedValue == "Cuidador")
                    {
                        var comando = new MySqlCommand($@"INSERT INTO cuidadores (Nome, Nascimento, Email, Senha, Telefone) 
                                VALUES ('{txtNome.Text}' ' ' '{txtSobrenome.Text}', '{NasDia.Text}' '/' '{NasMes.Text}' '/' '{NasAno.Text}' , '{txtEmail.Text}', '{txtSenha.Text}', '{txtTelefone.Text}')", connection);
                        comando.ExecuteNonQuery();
                    }

                    if (rdoTipo.SelectedValue == "Idoso")
                    {
                        var comando1 = new MySqlCommand($@"INSERT INTO idosos (Nome, Nascimento, Email, Senha, Telefone) 
                            VALUES ('{txtNome.Text}' ' ' '{txtSobrenome.Text}', '{NasDia.Text}' '/' '{NasMes.Text}' '/' '{NasAno.Text}' , '{txtEmail.Text}', '{txtSenha.Text}', '{txtTelefone.Text}')", connection);
                        comando1.ExecuteNonQuery();
                    }

                    SiteMaster.ExibirAlert(this, "Perfil cadastrado com sucesso!");
                    txtNome.Text = "";
                    txtSobrenome.Text = "";
                    NasDia.Text = "";
                    NasMes.Text = "";
                    NasAno.Text = "";
                    txtEmail.Text = "";
                    txtSenha.Text = "";
                    txtTelefone.Text = "";
                    txtConfirmarEmail.Text = "";
                    txtConfirmarSenha.Text = "";               
                }       

                connection.Close();

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