<%@ Page Title="" Language="C#" MasterPageFile="~/LogarIdoso.Master" AutoEventWireup="true" CodeBehind="Meu_perfil.aspx.cs" Inherits="WebApplication2.Paginas.Meu_perfil" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
     <link rel="" href="../content/style.css" />
  
           
   



            
                
<style>
    img.a {
        text-align: center;
    }

    .img_redonda {
        border-radius: 50%;
    }
</style>
    
    <body>

       <div style="background-color:lightgrey">
             <div style="text-align:center"  >
        <asp:Image runat="server" ID="imgperfil" CssClass="img_redonda" data-bs-toggle="popover" Width="215" Height="200" />
                
                    
                      <h1><asp:Label runat="server" Text="" ID="lblNome"></asp:Label><br /></h1>

                  <ul class="Contato:">

                <li>
                    <a href="mailto:luciamaria@gmail.com"><asp:Label runat="server" tipo="center" Text="teste@gmail.com" ID="lblEmail"></asp:Label><br /></a>
       
                </li>
            </ul>
            <div class="about">
                <h3>Sobre mim</h3>
                </div>

            </div>
           </div>
                
                <br>


            

   <%-- coluna 1--%>
        <div class="col-lg-1" >
            </div>
     <div class="col-lg-3" >      
         
        

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
</body>
</asp:Content>

