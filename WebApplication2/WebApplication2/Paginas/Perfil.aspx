<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="WebApplication2.Paginas.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <link rel="stylesheet" href="../content/style.css" />
  
            <title>Visualizar perfil</title>


            <div class="header">
                    <style>


        .img_redonda {
            border-radius: 50%;
        }
    </style>
    

        <%-- <asp:ImageButton runat="server" Width="215" Height="200" ID="img" CssClass="img_redonda" OnClick="" />--%>
        <asp:Image runat="server" ID="imgperfil" CssClass="img_redonda" data-bs-toggle="popover" Width="215" Height="200" />
                 
                    
                      <h1><asp:Label runat="server" Text="" ID="lblNome"></asp:Label><br /></h1>
            </div>
            <ul class="Contato:">
                <li>
                    <a href="mailto:luciamaria@gmail.com"><asp:Label runat="server" tipo="center" Text="teste@gmail.com" ID="lblEmail"></asp:Label></a>
       
                </li>
            </ul>
                               

	<a href="https://api.whatsapp.com/send?phone=5535984011040&text=Ol%C3%A1%20tudo%20bem?" 
	target="_blank">
		<img src="https://logosmarcas.net/wp-content/uploads/2020/05/WhatsApp-Logo.png" 
		width="70px" height="50px"/>
	</a><br/>
	<a href="tel:+5535984011040"></a><br/>

               

            <div class="about">
                <h3>Sobre mim</h3>


   <%-- coluna 1--%>
     <div class="col-lg-4" >        
         <br />         

         <h5>Nascimento: </h5> 
         <asp:Label runat="server" Text="" ID="lblNascimento"></asp:Label><br />
         <br />

         
         <h5>Telefone: </h5>
         <asp:Label runat="server" Text="" ID="lblTelefone"></asp:Label><br />
         <br />

        <%-- Coluna 1/2--%>


         <br /> <br />
                </div>


      <div class="col-lg-4" > 
               
         <br /> <br />

        
        <div>   
            <h5>Dias da semana:  </h5> 
            <asp:Label runat="server" Text="" ID="lblDias"></asp:Label><br /><br />
         
        </div>  

                   <h5>Localização: </h5>
          <asp:Label runat="server" Text="" ID="lblLocalização"></asp:Label><br />
         <br />

          
                   <h5>Sexo: </h5>
         <asp:Label runat="server" Text="" ID="lblSexo"></asp:Label><br />




         <br /> 

          <%--coluna 2/3--%>
         </div>
    
        <div class="col-lg-4" >
        <p style="height: 45px"></p>
        <h5>Valor: </h5>
            <asp:Label runat="server" Text="" ID="lblDinheiro"></asp:Label><br /><br />
          

          
          <%--  fim das 3 colunas--%>

       </div>
        
    <div class="col-lg-12" >
        <p style="height: 10px"></p>
        <h5>Descrição: </h5>
        <asp:Label runat="server" Text="" ID="lblDescrição"></asp:Label><br /><br />

    </div>

 <asp:Button runat="server" Text="Avaliar perfil" ID="btnFazerComent" OnClick="btnFazerComent_Click"/> <br /> <br />
     <asp:Button runat="server" Text="Visualizar avaliações" ID="btnVisuComent" OnClick="btnVisuComent_Click"/> <br /> <br />

</asp:Content>
