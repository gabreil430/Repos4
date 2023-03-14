<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista de perfis.aspx.cs" Inherits="WebApplication2.Paginas.Lista_de_perfis" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

       <!DOCTYPE html>

<html>

<head>
    <meta charset="utf-8" />
    
</head>


<body>
    <div class="nome text-center">
        <h1>Perfils</h1>
    </div>
    <div class="container bg-info" style="background-color:aquamarine">
        <h1>Idosos</h1>
    </div>
    <br />
    <div class="container">
        <div class="row">

            <div class="col-sm-3">
                <img src="../img/R.png" class="img-fluid" alt="..." width="250" height="300" />
                <a href="Perfil.aspx">Elisangela da Silva</a>
            </div>

            <div class="col-sm-3">
                <img src="../img/foto.jfif" class="img-fluid" alt="..." width="250" height="300" />
                 <a href="Perfil.aspx">Stan lee</a>
            </div>

             <div class="col-sm-3">
                <img src="../img/opa.jfif" class="img-fluid" alt="..." width="250" height="300" />
                  <a href="Perfil.aspx">Sebastião Olivera</a>
            </div>

             <div class="col-sm-3">
                <img src="../img/R.jfif" class="img-fluid" alt="..." width="250" height="300" />
                  <a href="Perfil.aspx">Carlos Eduardo</a>
            </div>


        </div>
    </div>
    <%--  --%>
    <br><br><br>

        </div>
    <div class="container bg-info" style="background-color:aquamarine">
        <h1>Cuidadores</h1>
        </div>
    <br>
    <div class="container">
        <div class="row">

            <div class="col-sm-3">
                <img src="../img/cuidador3.png" class="img-fluid" alt="..." width="250" height="300" />
                 <a href="Perfil.aspx">Leandro da Costa</a>
            </div>

            <div class="col-sm-3">
                <img src="../img/cuidador4.jfif" class="img-fluid" alt="..." width="250" height="300" />
                 <a href="Perfil.aspx">Jessica Pereira</a>
            </div>

             <div class="col-sm-3">
                <img src="../img/cuidador1.jpg" class="img-fluid" alt="..." width="250" height="300" />
                  <a href="Perfil.aspx">Daniel Da silva</a>
            </div>

             <div class="col-sm-3">
                <img src="../img/cuidador2.jpg" class="img-fluid" alt="..." width="250" height="300" />
                 <a href="Perfil.aspx">Keyla guilhermane</a>
            </div>


        </div>
    </div>





</body>

</html>

</asp:Content>
