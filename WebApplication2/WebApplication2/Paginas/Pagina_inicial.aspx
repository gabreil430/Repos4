<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Pagina_inicial.aspx.cs" Inherits="WebApplication2.Paginas.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <h1 style="text-align: center">PERSONALIZAÇÃO DE PERFIL</h1>
    <br />


    <style>
        img.a {
            text-align: center;
        }

        .img_redonda {
            border-radius: 50%;
        }
    </style>





    <div class="col-lg-4"></div>
    <div style="text-align: center">


        <asp:ImageButton runat="server" Width="215" Height="200" ID="img" CssClass="img_redonda" />
        <p style="height: 10px"></p>
        <h3>
            <asp:Label runat="server" Text="" ID="lblNome"></asp:Label><br />
        </h3>

    </div>
    <br>
    <div class="jumbotron" style="height: 900px">




        <%-- coluna 1--%>
        <div class="col-lg-4">





            <br />


            <h5>Email: </h5>
            <br />
            <asp:TextBox runat="server" ID="txtEmail"></asp:TextBox>
            <br />
            <br />

            <h5>Nascimento: </h5>
            <br />
            <asp:Label runat="server" Text="" ID="lblNascimento"></asp:Label><br />
            <br />
            <br />


            <h5>Telefone: </h5>
            <br />
            <asp:TextBox runat="server" ID="txtTelefone"></asp:TextBox>
            <br />
            <br />

            <%-- Coluna 1/2--%>


            <br />
            <br />
        </div>


        <div class="col-lg-4">

            <br />
            <br />


            <div>
                <h5>Dias da semana: </h5>
                <br />
                <asp:CheckBox ID="CheckBox7" value="1" runat="server" Text="D" />
                <asp:CheckBox ID="CheckBox1" value="2" runat="server" Text="S" />
                <asp:CheckBox ID="CheckBox2" value="3" runat="server" Text="T" />
                <asp:CheckBox ID="CheckBox3" value="4" runat="server" Text="Q" />
                <asp:CheckBox ID="CheckBox4" value="5" runat="server" Text="Q" />
                <asp:CheckBox ID="CheckBox5" value="6" runat="server" Text="S" />
                <asp:CheckBox ID="CheckBox6" value="7" runat="server" Text="S" />
            </div>
            <asp:CheckBox ID="cbxDias" runat="server" Text="Dias específicos" />

            <h5>Localização: </h5>
            <br />
            <asp:TextBox runat="server" ID="txtLocalizacao"></asp:TextBox>
            <br />
            <br />

            <asp:Label runat="server" Text="Sexo:" ID="lblSexo"></asp:Label><br />

            <asp:RadioButtonList runat="server" ID="rdogenero">
                <asp:ListItem Value="Feminino" Text="Feminino"></asp:ListItem>
                <asp:ListItem Value="Masculino" Text="Masculino"></asp:ListItem>
                <asp:ListItem Value="Outro" Text="Outro"></asp:ListItem>
            </asp:RadioButtonList>


            <br />
            <br />

            <%--coluna 2/3--%>
        </div>

        <div class="col-lg-4">
            <p style="height: 45px"></p>
            <h5>Valor: </h5>
            <br />
            <asp:Label runat="server" Text="R$" ID="lblRS"></asp:Label>
            <asp:TextBox runat="server" ID="txtValor"></asp:TextBox>

            <asp:DropDownList ID="moneyt" runat="server">
                <asp:ListItem Text="por hora" Value="por hora" />
                <asp:ListItem Text="por dia" Value="por dia" />
                <asp:ListItem Text="por semana" Value="por semana" />
                <asp:ListItem Text="por mês" Value="por mês" />
            </asp:DropDownList>
            <br>
            <asp:CheckBox ID="cbxNegocio" runat="server" Text="A negociar" />
            <br />


            <%--  fim das 3 colunas--%>
        </div>

        <div class="col-lg-12">
            <p style="height: 10px"></p>
            <h5>Descrição: </h5>
            <br />

            <asp:TextBox runat="server" ID="txtDescricao" Width="10000px" TextMode="MultiLine" Rows="5"></asp:TextBox><br />
            <br />


            <asp:Button runat="server" Text="Atualizar perfil" ID="btnAtualizarPerfil" OnClick="btnAtualizarPerfil_Click" CssClass="btn btn-sucess, content" />



        </div>
    </div>
</asp:Content>
