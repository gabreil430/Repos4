using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2.Paginas
{
    public partial class Lista_de_perfis : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            string ID = Session["IDlogin"].ToString();
            string Tipo = Session["Tipologin"].ToString();

            connection.Open();
            var comando2 = new MySqlCommand($@"select Nome, Sexo from {Tipo} where ID= @v1", connection);
            comando2.Parameters.Add(new MySqlParameter("@v1", ID));
            var reader2 = comando2.ExecuteReader();

            if (reader2.Read())
            {
                string Nome = reader2.GetString("Nome");
                string Sexo = reader2.GetString("Sexo");
                if(Sexo=="Feminino")
                {
                    SiteMaster.ExibirAlert(this, "Bem-vinda novamente, " + Nome + "!");
                }
                else
                {
                    SiteMaster.ExibirAlert(this, "Bem-vindo novamente, " + Nome + "!");
                }

            }
            connection.Close();
          
        }
    }
}