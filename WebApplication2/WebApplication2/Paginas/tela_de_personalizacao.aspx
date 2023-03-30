<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tela_de_personalizacao.aspx.cs" Inherits="WebApplication2.Paginas.tela_de_personalizacao" %>
<asp:Content ID="Content" ContentPlaceHolderID="MainContent" runat="server">
   
    

       <br /><h1 style="text-align:center">PERSONALIZAÇÃO DE PERFIL</h1> <br />
     
          <div class="col-lg-8"></div>

          <div class="col-lg-4" >           
          <p style="height: 10px"></p>
          <h3><asp:Label runat="server" Text="Nome e sobrenome" ID="lblNome"></asp:Label><br /></h3>
         
          </div>

<p style="height: 200px"></p>
 <h5>Por favor, preencha os campos a seguir para que seu perfil fique ainda mais completo e útil para quem visitá-lo: </h5> <br />

     <div class="col-lg-4" >        
         <br />
   
            
         <h5>Email: </h5> <br />
        <asp:Label runat="server" Text="teste@gmail.com" ID="lblEmail"></asp:Label><br />
         <br /> <br />

         <h5>Nascimento: </h5> <br />
         <asp:Label runat="server" Text="22/04/2005" ID="lblNascimento"></asp:Label><br />
         <br /> <br />

         
         <h5>Telefone: </h5> <br />
         <asp:Label runat="server" Text="(35)98401-1040" ID="lblTelefone"></asp:Label><br />
         <br /> <br />


         <h5>Localização: </h5> <br />
         <asp:TextBox runat="server" ID="txtLocalizacao"></asp:TextBox>
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
            <h5>Dias da semana necessários: </h5> <br />            
            <asp:CheckBox ID="CheckBox7" value="1" runat="server" Text="D" />  
            <asp:CheckBox ID="CheckBox1" value="2" runat="server" Text="S" />  
            <asp:CheckBox ID="CheckBox2" value="3" runat="server" Text="T" />  
            <asp:CheckBox ID="CheckBox3" value="4" runat="server" Text="Q" />  
            <asp:CheckBox ID="CheckBox4" value="5" runat="server" Text="Q" />  
            <asp:CheckBox ID="CheckBox5" value="6" runat="server" Text="S" />  
            <asp:CheckBox ID="CheckBox6" value="7" runat="server" Text="S" />                
        </div>  
        <asp:CheckBox ID="cbxDias" runat="server" Text="Dias específicos" /> 


         <br />  <br />
         </div>
    
        <div class="col-lg-4" >
        <p style="height: 45px"></p>
        <h5>Valor oferecido: </h5> <br /> 
            <asp:Label runat="server" Text=R$ ID="lblRS"></asp:Label>
        <asp:TextBox runat="server" ID="txtValor" ></asp:TextBox>            
           
            <asp:DropDownList ID="moneyt" runat="server">
            <asp:ListItem Text="Por hora" Value="Por hora"/>
            <asp:ListItem Text="Por dia" Value="Por dia"/>
            <asp:ListItem Text="Por semana" Value="Por semana"/>
            <asp:ListItem Text="Por mês" Value="Por mês"/>
            </asp:DropDownList>
             <br> <asp:CheckBox ID="cbxNegocio" runat="server" Text="A negociar" /> 




       </div>
        

        <p style="height: 10px"></p>
        <h5>Descrição: </h5> <br />
      
        <asp:Label runat="server" Text="Esta é uma das partes mais importantes do seu perfil. Informe suas necessidades e particularidades (como deficiências e medicações).
         Se preciso, especifique dados mensionados acima. Lembre-se que uma boa descrição auxiliará a encontrar o(a) cuidador(a) mais adequado para suas necessidades." ID="Label1"></asp:Label><br />
        <asp:TextBox runat="server" ID="txtDescricao" TextMode="MultiLine" Rows="5"></asp:TextBox><br /><br />

       
          <asp:Button  runat="server" Text="Salvar" ID="btnSalvar" OnClick="Confirmar_alteração_Click1" CssClass="btn btn-sucess"/>   

</asp:Content>


