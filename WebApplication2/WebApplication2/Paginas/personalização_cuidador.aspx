<%@ Page Title="" Language="C#" MasterPageFile="~/LogarIdoso.Master" AutoEventWireup="true" CodeBehind="personalização_cuidador.aspx.cs" Inherits="WebApplication2.Paginas.personalização_cuidador" %>
<asp:Content ID="Content" ContentPlaceHolderID="head" runat="server">

       <br /><h1 style="text-align:center">PERSONALIZAÇÃO DE PERFIL</h1> <br />
     
          <div class="col-lg-8"></div>

          <div class="col-lg-4" >           
          <p style="height: 10px"></p>
          <h3 >Ana Gabriela e</h3>           <h3 >Emilly Vitória</h3>
  
          </div>

<p style="height: 200px"></p>
 <h5>Por favor, preencha os campos a seguir para que seu perfil fique ainda mais completo e útil para quem visitá-lo: </h5> <br />

     <div class="col-lg-4" >        
         <br />
   
            
         <h5>Email: </h5> <br />
        <asp:Label runat="server" Text="teste@gmail.com" ID="lblEmail"></asp:Label><br />
         <br /> <br />

         <h5>Nascimento: </h5> <br />
         <asp:Label runat="server" Text="22/04/2005" ID="LblNascimento"></asp:Label><br />
         <br /> <br />

         <h5>Localização: </h5> <br />
         <asp:TextBox runat="server" ID="TxtLocalizacao"></asp:TextBox>
         <br /> <br />

         <asp:Label runat="server" Text="Sexo:" ID="lblSexo"></asp:Label><br />
          
        <asp:RadioButtonList runat="server" ID="rdogenero">
        <asp:ListItem Value="Feminino" Text="Feminino"></asp:ListItem>
        <asp:ListItem Value="Masculino" Text="Masculino"></asp:ListItem>
        <asp:ListItem Value="Outro" Text="Outro"></asp:ListItem>
        </asp:RadioButtonList>

         <br /> <br />
                </div>


      <div class="col-lg-4" > 
               
         <br /> <br />

        
<div>   
            <h5>Dias da semana disponíveis: </h5> <br />            
            <asp:CheckBox ID="CheckBox7" runat="server" Text="D" />  
            <asp:CheckBox ID="CheckBox1" runat="server" Text="S" />  
            <asp:CheckBox ID="CheckBox2" runat="server" Text="T" />  
            <asp:CheckBox ID="CheckBox3" runat="server" Text="Q" />  
            <asp:CheckBox ID="CheckBox4" runat="server" Text="Q" />  
            <asp:CheckBox ID="CheckBox5" runat="server" Text="S" />  
            <asp:CheckBox ID="CheckBox6" runat="server" Text="S" />  

              
        </div>  


         <br />
         </div>
    
        <div class="col-lg-4" >
        <p style="height: 45px"></p>
        <h5>Valor cobrado: </h5> <br /> 
            <asp:Label runat="server" Text=R$ ID="lblRS"></asp:Label>
        <asp:TextBox runat="server" ID="txtValor" ></asp:TextBox><br />            
            <asp:CheckBox ID="cbxNegocio" runat="server" Text="A negociar" />  

       
        <div/>

        <p style="height: 10px"></p>
        <h5>Descrição: </h5> <br />
      
        <asp:Label runat="server" Text="Esta é uma das partes mais importantes do seu perfil. Informe suas formações, especificações e diferenciais. Se preciso, especifique dados mensionados acima. Lembre-se que uma boa descrição auxiliará a encontrar o cliente mais adequado para você." ID="Label1"></asp:Label><br />
        <asp:TextBox runat="server" ID="TxtDescricao" TextMode="MultiLine" Rows="5"></asp:TextBox><br /><br />
      
        

</asp:Content>

