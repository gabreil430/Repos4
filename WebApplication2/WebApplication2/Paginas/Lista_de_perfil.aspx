<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista_de_perfil.aspx.cs" Inherits="WebApplication2.Paginas.Lista_de_perfis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="nome text-center">
        <h1>Explorar contas</h1>
    </div>
    <br />


    <div>
        <h1>Buscando profissional</h1>
    </div>
    <style>
        .Change {
            background-color: gray; /* Green */
            border: none;
            color: white;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 4px;
            transition-duration: 0.4s;
            cursor: pointer;
        }

        .ade {
            background-color: gray;
            color: black;
            border: 2px solid #e7e7e7;
        }

            .ade:hover {
                background-color: #959595;
                color: white;
            }
    </style>

    <div class="jumbotron" style="background-color: lightgray">
        <%--  go back--%>
        <div class="col-sm-1">
            <asp:Button runat="server" ID="BeforeI" Text="<" Width="25" Height="250" CssClass="Change ade" />
        </div>
        <%--Veio 1--%>
        <div class="col-sm-3">
            <img src="../img/idosaum.jpg" Id="V1" class="perfil" alt="..." width="250" height="300" />

        </div>
        <%--2--%>
        <div class="col-sm-4">
            <img src="../img/idosodois.jpg" Id="V2" class="perfil" alt="..." width="250" height="300" />
        </div>
        <%--3--%>
        <div class="col-sm-3">
            <img src="../img/idosotres.webp" Id="V3" class="perfil" alt="..." width="250" height="300" />

        </div>

        <%--GO foward--%>
        <div class="col-sm-1">
            <asp:Button runat="server" ID="nextI" Text=">" Width="25" Height="250" CssClass="Change ade" />
        </div>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
    </div>

    <%--  --%>
    <br>


    <div>
        <h1>Oferecendo seus serviços</h1>
    </div>

    <div class="jumbotron" style="background-color: lightgray">
        <div class="row">

            <%--  go back--%>
            <div class="col-sm-1">
                <asp:Button runat="server" ID="Button1" Text="<" Width="25" Height="250" CssClass="Change ade" />
            </div>


            <%--1--%>
            <div class="col-sm-3">
                <img src="../img/foto ana.jpeg" Id="C1" class="perfil" alt="..." width="250" height="300" />
            </div>
            <%--2--%>
            <div class="col-sm-4">
                <img src="" class="img-fluid" Id="C2" alt="..." width="250" height="300" />
            </div>
            <%--3--%>
            <div class="col-sm-3">
                <img src="" class="img-fluid" Id="C3" alt="..." width="250" height="300" />
            </div>



            <%--GO foward--%>
            <div class="col-sm-1">
                <asp:Button runat="server" ID="Button2" Text=">" Width="25" Height="250" CssClass="Change ade" />
            </div>


        </div>
    </div>
    </>


</asp:Content>
