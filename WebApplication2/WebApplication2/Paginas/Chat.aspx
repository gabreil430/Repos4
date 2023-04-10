<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Chat.aspx.cs" Inherits="WebApplication2.Paginas.Chat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        h1 { 
  text-decoration: underline;
}

    </style>
    <div class="container" style="text-align:center">
        <h1>Suporte</h1>

        </div>

    <div class="col-lg-4">
        </div>  
<div class="jumbotron col-lg-4" style="text-align:center" >


    <h5>Nome: </h5>
<asp:TextBox runat="server" ID="txtNome"></asp:TextBox>
<h5>Seu e-mail: </h5>
<asp:TextBox runat="server" ID="txtSeuEmail"></asp:TextBox>
<h5>Assunto: </h5>
            <asp:DropDownList ID="assunto" runat="server">
            <asp:ListItem Text="Elogio" Value="Elogio"/>
            <asp:ListItem Text="Sugestão" Value="Sugestao"/>
            <asp:ListItem Text="Mal funcionamento" Value="Mal funcionamento"/>
            <asp:ListItem Text="Reclamação" Value="Reclamação"/>
            </asp:DropDownList>
<h5>Mensagem: </h5>
<asp:TextBox runat="server" ID="txtMensagem" TextMode="MultiLine" Rows="5"></asp:TextBox><br>
<asp:Button  runat="server" Text="Enviar" ID="btnEnviar" OnClick="btnEnviar_Click" CssClass="btn btn-sucess"/>  

     </div>

     <div class="col-lg-4," style="height: 600px">
        </div>  
</asp:Content>
