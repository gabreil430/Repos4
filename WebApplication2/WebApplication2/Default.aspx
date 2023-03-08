<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron, col-sm-3">
    </div>


    <div class="jumbotron, col-sm-1" style="background-color:white" >
     <p style="height: 450px"></p>
    </div>

   


   <div class="jumbotron, col-sm-5"  style= background-color:white;>

        <br> <h1 style="width:400px">LOGIN</h1><br>
        
        Email <asp:textbox CssClass="btn-lg" runat="server"  Width="8000px" Text=""></asp:textbox><br><br>
        Senha <asp:textbox CssClass="btn-lg" runat="server" Width="600px" Text="">  </asp:textbox><br><br>
        
        <a href="Paginas/pagina_de_cadastro.aspx"> Criar uma conta</a><br><br>
      

        <div class="col-sm-3">

        <asp:Button runat="server" CssClass="btn btn-success" ID="Button2" Text="Entrar" OnClick="btnEntrar_Click" />

        <p style="height: 130px"></p>  
       </div>
         
   </div>
    
     

</asp:Content>
