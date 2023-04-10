<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Lista_de_perfil.aspx.cs" Inherits="WebApplication2.Paginas.Lista_de_perfis" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <style>
      
     

        .slick-prev:before {
            color: #03e9f4 !important;
        }

        .slick-next:before {
            color: #03e9f4 !important;
        }
    </style>



    <head>
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css" />
        <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick-theme.min.css" />
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.js"></script>

    </head>








    <div class="nome text-center">
        <h1>Explorar contas</h1>
    </div>
    <br />


    
    <div class="container" style="background-color:lightgray">
        <h1>Buscando profissional</h1>
    </div>

     <br />


    <div class="slick-carousel">
        <div>
            <asp:ImageButton ID="img" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="img_Click" />
             <div class="caption"><asp:Label runat="server" Text="" ID="lbli1"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img2" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img2_Click" />
           <div class="caption"><asp:Label runat="server" Text="" ID="lbli2"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img3" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img3_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli3"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img4" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img4_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli4"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img5" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img5_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli5"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img6" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img6_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli6"></asp:Label></div>
        </div>



    </div>
    <script>
        $(document).ready(function () {
                      $('.slick-carousel').slick({
                          slidesToShow: 3,
                          slidesToScroll: 1,
                         /* autoplay: true,*/
                  /*        autoplaySpeed: 10000,*/
                          arrows: true,

                      });
        });

        $('.carousel').on('slide.bs.carousel', function (e) {
            var caption = $(e.relatedTarget).find('.caption').text();
            $('.carousel-caption').text(caption);
        });


    </script>

     <br /> <br /> <br />

    
    <div class="container" style="background-color:lightgray">
        <h1>Oferecendo seus serviços</h1>
    </div>

    <br />


    <div class="slic-carousel">
        <div>
            <asp:ImageButton ID="Img7" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img7_Click"/>
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli7"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img8" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img8_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli8"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img9" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img9_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli9"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img10" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img10_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli10"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img11" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img11_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli11"></asp:Label></div>
        </div>
        <div>
            <asp:ImageButton ID="Img12" CssClass="img_redonda" runat="server" data-bs-toggle="popover" Width="215" Height="200" OnClick="Img12_Click" />
            <div class="caption"><asp:Label runat="server" Text="" ID="lbli12"></asp:Label></div>
        </div>

    </div>
    <script>
        $(document).ready(function () {
            $('.slic-carousel').slick({
                slidesToShow: 3,
                slidesToScroll: 1,
               /* autoplay: true,*/
               /* autoplaySpeed: 10000,*/
                arrows: true,

            });
        });

    </script>





    <%--    <div>
        <h1>Oferecendo seus serviços</h1>
    </div>--%>

    <%--    <div class="jumbotron" style="background-color: lightgray">
        <div class="row">--%>

    <%--  go back
            <%--<div class="col-sm-1">
                <asp:Button runat="server" ID="Button1" Text="<" Width="25" Height="250" CssClass="Change ade" />
            </div>


            <%--1
            <%--<div class="col-sm-3">
                <img src="../img/foto ana.jpeg" Id="C1" class="perfil" alt="..." width="250" height="300" />
            </div>--%>
    <%--2--%>
    <%--            <div class="col-sm-4">
                <img src="" class="img-fluid" Id="C2" alt="..." width="250" height="300" />
            </div>--%>
    <%--3--%>
    <%--  <div class="col-sm-3">
                <img src="" class="img-fluid" Id="C3" alt="..." width="250" height="300" />
            </div>--%>



    <%--GO foward--%>
    <%-- <div class="col-sm-1">
                <asp:Button runat="server" ID="Button2" Text=">" Width="25" Height="250" CssClass="Change ade" />
            </div>--%>


    <%--        </div>
    </div>--%>
        <%--    </>--%>

</asp:Content>
