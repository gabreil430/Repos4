<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/LogarIdoso.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
    <link rel="stylesheet" href="content/style.css" />
    <div>

  
        <div class="login">
            <h2>Login</h2>
            <div class="box-user" style="margin-left: 5vh;">
                <p style="color:white">Usuário:</p>
                <label style="color:white"></label>
                <asp:TextBox runat="server" id="TextBox1"></asp:TextBox>
                
            </div>
            <div class="box-user" style="margin-top:10px;margin-left: 5vh;" >
                <p style="color:white">Senha:</p>
                <label style="color:white; margin-right: 9px;"></label>
                 <asp:TextBox runat="server" Text=""> </asp:TextBox>
            </div>
            <div>
                <a href="#" class="forget" style="margin-top: 2vh;margin-left: 15vh;">Esqueceu sua senha?</a>
            </div>
            <asp:LinkButton runat="server" ID="btnEntrar" OnClick="btnEntrar_Click" CssClass="btn" style="margin-left: 17vh">
   <span></span>
                <span></span>
                <span></span>
                <span></span>
                Entrar
            </asp:LinkButton>

        </div>
          </div>

</asp:Content>
    
        




