<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="WebApplication2.Paginas.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <!DOCTYPE html>
    <html>
        <head>
            <title>Meu perfil</title>
            <style>
                .header{
                    text-align: center;
                    height: 300px;
                    padding: 12px;
                    background-image: url(""); /*colocar uma imagem de fundo/pessoa importa*/
                }

                .avatar{
                    width: 200px;
                    height: 200px;
                    border-radius: 50%;
                }

                .nome{
                    font-size:18px;
                    margin-top: 14px;
                    color: #ffff;
                }

                .contato{
                    list-style: none;
                    text-align: center;
                    padding: 0;
                }

                .contato l1{
                    display: inline-block;
                    margin: 5px;
                }

                a{
                    text-decoration:none;
                    color:#ad0000;
                }

                a:hover{
                    color: #dd1919
                }

                .icon{
                    width:16px;
                    height:16px;
                    display: inline-block;
                    background-size: cover;
                }

                .email{
                    background-image= url("icons/envelope.png");
                }

                .about{
                    padding: 10px;
                    color: #545454;
                    font-size: 16px;
                }

                .about p{
                    color: #545454;
                    font-size: 16px;
                }


            </style>
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
