using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Linq.Expressions;
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
        private MySqlConnection connection2;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection2 = new MySqlConnection(SiteMaster.ConnectionString);
        }

        protected void btnEntrar_Click(object sender, EventArgs e)
        {
            connection.Open();
            connection2.Open();

                var comando = new MySqlCommand($@"select ID, Email, Senha from cuidadores where Email= @v1", connection);
                comando.Parameters.Add(new MySqlParameter("@v1", txtEmail.Text));
                var reader = comando.ExecuteReader();

                var comando1 = new MySqlCommand($@"select ID, Email, Senha from idosos where Email= @v2", connection2);
                comando1.Parameters.Add(new MySqlParameter("@v2", txtEmail.Text));
                var reader1 = comando1.ExecuteReader();

                if (reader.Read())
                {
                    int ID = reader.GetInt32("ID");
                    string Email = reader.GetString("Email");
                    string Senha = reader.GetString("Senha");
                    Session["IDlogin"] = ID;
                    Session["Tipologin"] = "cuidadores";
    

                    if (txtSenha.Text == Senha)
                    {
                    Response.Redirect("http://localhost:49953/Paginas/tela_de_personalizacao");
                    //Response.Redirect("http://localhost:49953/personalizacao_cuidador");
                    //SiteMaster.ExibirAlert(this, "REDIRECIONAR CUIDADORES");


                    }
                    else
                    {
                        SiteMaster.ExibirAlert(this, "Senha incorreta.");
                        txtSenha.Text = "";
                    }
                }


                if (reader1.Read())
                {
                       int ID = reader1.GetInt32("ID");
                       string Email = reader1.GetString("Email");
                       string Senha = reader1.GetString("Senha");
                       Session["IDlogin"] = ID;
                       Session["Tipologin"] = "idosos";

                       if (txtSenha.Text == Senha)
                       {
                            Response.Redirect("http://localhost:49953/Paginas/tela_de_personalizacao");
                            //SiteMaster.ExibirAlert(this, "REDIRECIONAR IDOSOS");
                       }
                       else
                       {
                           SiteMaster.ExibirAlert(this, "Senha incorreta.");
                           txtSenha.Text = "";
                       }
                        
                }

                if (reader.Read()==false && reader1.Read()==false)
                {
                    SiteMaster.ExibirAlert(this, "Usuário não encontrado.");
                    txtEmail.Text = "";
                    txtSenha.Text = "";
                }
                
                connection.Close();
                connection2.Close();
            
        }
    }
}