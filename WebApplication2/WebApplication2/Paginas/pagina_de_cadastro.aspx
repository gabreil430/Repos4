<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="pagina_de_cadastro.aspx.cs" Inherits="WebApplication2.Paginas.pagina_de_cadastro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">



    <br>
    <h1 style="text-align: center">Cadastro</h1>
    <br>

    <div class="col-lg-6">
        <br>
        <br>
        <br>
        <div class="jumbotron, col-sm-4" style="background-color: white"></div>


        <div class="jumbotron, col-sm-4" style="background-color: white; /*border: dashed*/">



            <asp:TextBox CssClass="btn-lg" runat="server" ID="txtNome" Width="8000px" placeholder="Nome"></asp:TextBox>
            <br>
            <br>

            <asp:TextBox CssClass="btn-lg" runat="server" ID="txtSobrenome" Width="8000px" placeholder="Sobrenome"></asp:TextBox>
            <br>
            <br>

            <asp:TextBox CssClass="btn-lg" runat="server" ID="txtNascimento" Width="8000px" placeholder="Dia/Mês/Ano"></asp:TextBox>
            <br>
            <br>

            <asp:TextBox CssClass="btn-lg" runat="server" ID="txtTelefone" Width="8000px" placeholder="Número de telefone"></asp:TextBox>
            <br>
            <br>




            <label>Escolha seu Perfil</label>
            <br>        
            <asp:RadioButtonList runat="server" ID="rdoTipo">
            <asp:ListItem Value="Idoso" Text="Idoso"></asp:ListItem>
            <asp:ListItem Value="Cuidador" Text="Cuidador"></asp:ListItem>
            </asp:RadioButtonList>

        </div>

    </div>



    <div class="col-lg-6">

        <br>
        <br>
        <br>

        <asp:TextBox CssClass="btn-lg" runat="server" ID="txtEmail" Width="8000px" placeholder="Email"></asp:TextBox><br>
        <br>

        <asp:TextBox CssClass="btn-lg" runat="server" id="txtConfirmarEmail" Width="8000px" placeholder="Confirmar Email"></asp:TextBox><br>
        <br>

        <asp:TextBox CssClass="btn-lg" runat="server" ID="txtSenha" Width="600px" placeholder="Senha"></asp:TextBox><br>
        <br>

        <asp:TextBox CssClass="btn-lg" runat="server" ID="txtConfirmarSenha" Width="600px" placeholder="Confirmar Senha"></asp:TextBox><br>

        <br>
        <a href="~/Default.aspx" runat="server">Já tem uma conta? Faça um Login.</a><br>
        <br>
        <br>

        <div></div>

        <div style="text-align: center; padding-right:110px">
            <asp:Button runat="server" ID="btnConfirmar" Text="Confirmar" class="btn btn-success btn-lg" OnClick="btnConfirmar_Click" />
        </div>
    </div>

    <div style="height: 900px"></div>


    </div>

</asp:Content>
