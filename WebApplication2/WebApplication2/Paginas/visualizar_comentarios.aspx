<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="visualizar_comentarios.aspx.cs" Inherits="WebApplication2.Paginas.visualizar_comentario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>

        textarea {
  width: 500px;
  height: 100px;
}


    </style>
    <h1 style="text-align:center">Avaliaçoes de usuario</h1><br /> <br />

    
    <div class="container col-lg-6>" style="text-align:center">

        <p2>Aqui pode ser visto todas as avaliações de usuario nada poderá ser alterado nessa pagina, caso queira deixar sua avaliação vá até a pagina de "avaliar perfil", caso tenha um comentario desrespeitoso porfavor reporte.</p2>
        
        </div>
        
     <div class="col-lg-3">
        </div>  




<div class="jumbotron col-lg-6" style="text-align:center" >




     <asp:Label runat="server" Text="" ID="lblNome"></asp:Label>
    <asp:Label runat="server" Text=" avaliou este perfil como " ID="lblComo"></asp:Label>
     <asp:Label runat="server" Text="" ID="lblAvaliacao"></asp:Label><br />
    <asp:Label runat="server" Text="Comentário feito: " ID="lblComentário"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario" TextMode="MultiLine" Rows="5" Enabled="false"></asp:TextBox><br /><br />

         <asp:Label runat="server" Text="" ID="lblNome2"></asp:Label>
    <asp:Label runat="server" Text=" avaliou este perfil como " ID="Label2"></asp:Label>
     <asp:Label runat="server" Text="" ID="lblAvaliacao2"></asp:Label><br />
    <asp:Label runat="server" Text="Comentário feito: " ID="Label4"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario2" TextMode="MultiLine" Rows="5" Enabled="false"></asp:TextBox><br /><br />

         <asp:Label runat="server" Text="" ID="lblNome3"></asp:Label>
    <asp:Label runat="server" Text=" avaliou este perfil como " ID="Label6"></asp:Label>
     <asp:Label runat="server" Text="" ID="lblAvaliacao3"></asp:Label><br />
    <asp:Label runat="server" Text="Comentário feito: " ID="Label8"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario3" TextMode="MultiLine" Rows="5" Enabled="false"></asp:TextBox><br /><br />

         <asp:Label runat="server" Text="" ID="lblNome4"></asp:Label>
    <asp:Label runat="server" Text=" avaliou este perfil como " ID="Label10"></asp:Label>
     <asp:Label runat="server" Text="" ID="lblAvaliacao4"></asp:Label><br />
    <asp:Label runat="server" Text="Comentário feito: " ID="Label12"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario4" TextMode="MultiLine" Rows="5" Enabled="false"></asp:TextBox><br /><br />

         <asp:Label runat="server" Text="" ID="lblNome5"></asp:Label>
    <asp:Label runat="server" Text=" avaliou este perfil como " ID="Label14"></asp:Label>
     <asp:Label runat="server" Text="" ID="lblAvaliacao5"></asp:Label><br />
    <asp:Label runat="server" Text="Comentário feito: " ID="Label16"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario5" TextMode="MultiLine" Rows="5" Enabled="false"></asp:TextBox><br /><br />

             <asp:Label runat="server" Text="" ID="lblNome6"></asp:Label>
    <asp:Label runat="server" Text=" avaliou este perfil como " ID="Label3"></asp:Label>
     <asp:Label runat="server" Text="" ID="lblAvaliacao6"></asp:Label><br />
    <asp:Label runat="server" Text="Comentário feito: " ID="Label7"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario6" TextMode="MultiLine" Rows="5" Enabled="false"></asp:TextBox><br /><br />


    </div>
     <div class="col-lg-3" style="height:2000px">
        </div>  


</asp:Content>

