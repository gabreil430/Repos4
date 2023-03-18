<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <link rel="stylesheet" href="EstiloPadrao/StyleSheet1.css" />

    <div class="jumbotron, col-sm-3">
    </div>


    <div class="jumbotron, col-sm-1" style="background-color: white">
        <p style="height: 450px"></p>
    </div>




    <div class="jumbotron, col-sm-5" style="background-color: gray; text-align: center">

        <br>
        <h1 style="width: 400px">LOGIN</h1>
        <br>
        <div class="col-sm-6">
            <div class="row">
                <asp:Label runat="server" ID="lblNome" Text="Nome"></asp:Label>
            </div>
            <div class="row">
                Senha
            </div>

        </div>
        <div class="col-sm-6">
            <div class="row">
                   <asp:TextBox runat="server" Class="txt-g" Width="8000px" Text=""></asp:TextBox>
            </div>
            <div class="row">
                 <asp:TextBox runat="server" Class="txt-g" Width="600px" Text="">  </asp:TextBox>
            </div>
        </div>


        <a href="Paginas/pagina_de_cadastro.aspx">Criar uma conta</a><br>
        <br>


        <div class="col-sm-3">

            <asp:Button runat="server" CssClass="btn btn-success" ID="Button2" Text="Entrar" OnClick="btnEntrar_Click" />

            <p style="height: 130px"></p>
        </div>

    </div>



</asp:Content>
