﻿using MySqlConnector;
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

                try
                {

                    connection.Open();

                    if (rdoTipo.SelectedValue == "Cuidador")
                    {
                            var comando = new MySqlCommand($@"INSERT INTO cuidadores (Nome, DataNascimento, Email, Senha, Telefone) 
                            VALUES ('{txtNome.Text}' ' ' '{txtSobrenome.Text}', '{txtNascimento.Text}', '{txtEmail.Text}', '{txtSenha.Text}', '{txtTelefone.Text}')", connection);
                            comando.ExecuteNonQuery();
                    }

                if (rdoTipo.SelectedValue == "Idoso")
                {
                            var comando1 = new MySqlCommand($@"INSERT INTO idosos (Nome, DataNascimento, Email, Senha, Telefone) 
                        VALUES ('{txtNome.Text}' ' ' '{txtSobrenome.Text}', '{txtNascimento.Text}', '{txtEmail.Text}', '{txtSenha.Text}', '{txtTelefone.Text}')", connection);
                            comando1.ExecuteNonQuery();
                    }

                        SiteMaster.ExibirAlert(this, "Perfil cadastrado com sucesso!");
                        txtNome.Text = "";
                        txtSobrenome.Text = "";
                        txtNascimento.Text = "";
                        txtEmail.Text = "";
                        txtSenha.Text = "";
                        txtTelefone.Text = "";
                        txtConfirmarEmail.Text = "";
                        txtConfirmarSenha.Text = "";

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