<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="WebApplication2.Paginas.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <link rel="stylesheet" href="../content/style.css" />
  
    <!DOCTYPE html>
    <html>
        <head>
            <title>Meu perfil</title>

        </head>
        <body>
            <div class="header">
                <img
                    class="avatar"
                     scr="" /> <%--banco de dados--%>
                 
                    
                    <h1 class="user-nome">Lucia Maria</h1>
            </div>
            <ul class="contato">
                <li>
                    <a href="mailto:luciamaria@gmail.com">luciamaria@gmail.com</a>
                </li>
            </ul>
            <div class="about">
                <h3>Sobre mim</h3>
                <p>
                    Em busca de um profissional que possa me fazer companhia...
                </p>
            </div>
        </body>


    </html>

</asp:Content>
