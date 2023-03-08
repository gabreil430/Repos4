<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pagina_de_cadastro.aspx.cs" Inherits="WebApplication2.Paginas.pagina_de_cadastro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

  

    <div class="jumbotron, col-sm-4" style="background-color:white"></div>
    
        
    <div class="jumbotron, col-sm-4"  style=" background-color:white; /*border:dashed*/" >

    <br> <h1 style="text-align:center">Sign in</h1><br>
        
    <asp:textbox CssClass="btn-lg" runat="server" id="txtNome" Width="8000px" placeholder="Nome"></asp:textbox> <br><br>
       
        
    <asp:textbox CssClass="btn-lg" runat="server" id="txtSobrenome" Width="8000px" placeholder="Sobrenome"></asp:textbox> <br><br>
     
        <asp:textbox CssClass="btn-lg" runat="server" id="txtIdade" Width="100px" placeholder="Idade"></asp:textbox> 
       <div class ="col-sm-6" > 
  
        <label>Escolha sua Categoria</label>
            <form>
    <input type="radio" name="season" id="RadioIdoso" value="Idoso" checked>Idoso
    <input type="radio" name="season" id="RadioCuidadoso" value="Cuidador">Cuidador
            </form>
        </div>

       
        <br> <br> <br>

        <asp:textbox CssClass="btn-lg" runat="server" id="txtEmail" Width="8000px" placeholder="Email"></asp:textbox><br><br>
        
        <asp:textbox CssClass="btn-lg" runat="server" Width="8000px" placeholder="Email"></asp:textbox><br><br>
        
        <asp:textbox CssClass="btn-lg" runat="server" id="txtSenha" Width="600px" placeholder="Senha"></asp:textbox><br><br>
        
        <asp:textbox CssClass="btn-lg" runat="server" Width="600px" placeholder="Confirmar Senha"></asp:textbox><br>
        
        <br><a href="~/Default.aspx"  Runat="server" >Ja tem uma conta? faça um Login filho da puta</a><br><br>
          
        <asp:Button runat="server" ID="btnConfirmar" Text="Confirmar" class="btn btn-success btn-lg" OnClick="btnConfirmar_Click" />

        </div>   

        <div style="height:900px"></div>

</asp:Content>
