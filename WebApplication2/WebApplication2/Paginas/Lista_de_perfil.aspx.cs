using MySqlConnector;
using Serilog.Parsing;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using static System.Net.Mime.MediaTypeNames;

namespace WebApplication2.Paginas
{
    public partial class Lista_de_perfis : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);

            //Arrumar ID e Tipo pois estão pré determinados, o perfil n corresponde ao que eu inseri no cadastro
            //string ID = Session["IDlogin"].ToString();
            //string Tipo = Session["Tipologin"].ToString();

            string ID = "15";
            string Tipo = "idosos";
           



            connection.Open();
            var comando2 = new MySqlCommand($@"select Nome, Sexo from {Tipo} where ID= @v1", connection);
            comando2.Parameters.Add(new MySqlParameter("@v1", ID));
            var reader2 = comando2.ExecuteReader();
            if (reader2.Read())
            {
                string Nome = reader2.GetString("Nome");
                string Sexo = reader2.GetString("Sexo");
                //if (!IsPostBack)
                //{
                //    if (Sexo == "Feminino")
                //    {
                //        SiteMaster.ExibirAlert(this, "Bem-vinda novamente, " + Nome + "!");
                //    }
                //    else
                //    {
                //        SiteMaster.ExibirAlert(this, "Bem-vindo novamente, " + Nome + "!");
                //    }
                //}
            }
            connection.Close();
            if (!IsPostBack)
            {
                Session["IDp"] =  15;
                Session["IDp2"] = 16;
                Session["IDp3"] = 17;
                Session["IDp4"] = 18;
                Session["IDp5"] = 19;
                Session["IDp6"] = 20;
                Session["IDp7"] = 7;
                Session["IDp8"] = 8;
                Session["IDp9"] = 9;
                Session["IDp10"] = 10;
                Session["IDp11"] = 11;
                Session["IDp12"] = 12;
            }
            img.ImageUrl  = "../img/" + Session["IDp"].ToString() + "i.png";
            Img2.ImageUrl = "../img/" + Session["IDp2"].ToString() + "i.png";
            Img3.ImageUrl = "../img/" + Session["IDp3"].ToString() + "i.png";
            Img4.ImageUrl = "../img/" + Session["IDp4"].ToString() + "i.png";
            Img5.ImageUrl = "../img/" + Session["IDp5"].ToString() + "i.png";
            Img6.ImageUrl = "../img/" + Session["IDp6"].ToString() + "i.png";
            Img7.ImageUrl = "../img/" + Session["IDp7"].ToString() + "c.png";
            Img8.ImageUrl = "../img/" + Session["IDp8"].ToString() + "c.png";
            Img9.ImageUrl = "../img/" + Session["IDp9"].ToString() + "c.png";
            Img10.ImageUrl = "../img/" + Session["IDp10"].ToString() + "c.png";
            Img11.ImageUrl = "../img/" + Session["IDp11"].ToString() + "c.png";
            Img12.ImageUrl = "../img/" + Session["IDp12"].ToString() + "c.png";

            lbli1.Text = "Maria Aparecida - Piranguinho";
            lbli2.Text = "Ildebrando Dias - Itajubá";
            lbli3.Text = "Carlos da Silva - Itajubá";
            lbli4.Text = "Marta Pereira - Itajubá";
            lbli5.Text = "Carlos Carvalho - SP";
            lbli6.Text = "Araci Dias - RJ";
            lbli7.Text = "Giovana Simão - Itajubá";
            lbli8.Text = "Emilly Vitória - Piranguinho";
            lbli9.Text = "Sandra Maria - RJ";
            lbli10.Text = "Douglas Gabriel - Itajubá";
            lbli11.Text = "Ana Souza - Piranguinho";
            lbli12.Text = "Andrew Garfield - Los Angeles";
        }

        protected void img_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp"];
            Session["Tipoperfil"] = "idosos";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img2_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp2"];
            Session["Tipoperfil"] = "idosos";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img3_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp3"];
            Session["Tipoperfil"] = "idosos";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img4_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp4"];
            Session["Tipoperfil"] = "idosos";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        

        protected void Img5_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp5"];
            Session["Tipoperfil"] = "idosos";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img6_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp6"];
            Session["Tipoperfil"] = "idosos";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

     
        protected void Img7_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp7"];
            Session["Tipoperfil"] = "cuidadores";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img8_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp8"];
            Session["Tipoperfil"] = "cuidadores";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img9_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp9"];
            Session["Tipoperfil"] = "cuidadores";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img10_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp10"];
            Session["Tipoperfil"] = "cuidadores";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img11_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp11"];
            Session["Tipoperfil"] = "cuidadores";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }

        protected void Img12_Click(object sender, ImageClickEventArgs e)
        {
            Session["IDperfil"] = Session["IDp12"];
            Session["Tipoperfil"] = "cuidadores";
            Response.Redirect("http://localhost:49953/Paginas/Perfil");
        }
    }
}