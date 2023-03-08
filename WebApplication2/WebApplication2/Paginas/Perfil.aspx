<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="WebApplication2.Paginas.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
    <html>


    <style>
  h1 {color:dimgray; background-color:aquamarine;}
  
  textcenter {text-align:center; color:blue;}

  .lbl {
    font-size: larger;
    position:absolute;
    text-align:center;
    bottom:0;
    width:100%;
    left:10%;
  }
  

    </style>




    <head>
        <style>
  @import url('https://fonts.googleapis.com/css2?family=Ubuntu:wght@300&display=swap');
</style>


        <style type="text/css" title="miltinestilo1" media="all">

            *    {
                font-family: 'Ubuntu', sans-serif;
                margin:0;
                text-align:0;
            }

            body {
                font-family: 'Ubuntu', sans-serif;
            }


            header {
                background-color:aquamarine;
            }
            .ico {
                padding-top: 15px;
                width:40px;
                border-radius: 10%;
                /*filter: grayscale(1) (deixa a imagem de perfil cinza) */
            }
            .about {
                background-color:lightgray;
                margin-left :200px;
                margin-right :200px;
                margin-top: 10px;
                padding: 10px;
            }
        </style>


    </head>

    <body>

<div class="header">
<h1 style="text-align:center" >Perfil</h1>
    
    <p runat="server" style="text-align:center" >idoso full time</p> <%--(Conectar com banco de dados)--%>

    <img src="../img_girl.png" alt="Imagem de perfil"><%-- (Fazer imagens conectadas com o banco de dados, as imagens de perfil vão ser recebidas na pagina de
    Personalização de usuario)--%>

</div>
        <br>


        <div class="about">
            <h2>Sobre mim</h2>
            <p>BLA BLA BLA</p> <%--(Conectar ao banco de dados)--%>

        </div>

        <div>
            Detalhes
                <span>Nome:</span>        <p></p>
                <span>Idade:</span>       <p></p>
                <span>Localização:</span> <p></p>




        </div>



    </body>

    </html>

</asp:Content>
