<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="tela_de_personalizacao.aspx.cs" Inherits="WebApplication2.Paginas.tela_de_personalizacao" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    


<%--    <div class="jumbotron, col-sm-1"  >
         <p style="height: 850px"></p>
        </div>--%>
    
    <br /><h1 style="text-align:center">PERSONALIZAÇÃO DE PERFIL</h1> <br />
    <%-- <div class="jumbotron, col-sm-2"  style=" background-color:ghostwhite;" > </div>--%>
     
          <div class="col-lg-8"></div>

          <div class="col-lg-4" >           
          <p style="height: 10px"></p>
          <h3 >Ana Gabriela e</h3>           <h3 >Emilly Vitória</h3>
  
          </div>

<p style="height: 200px"></p>
 <h5>Precisamos de mais informações suas. Por favor, preencha os campos a seguir: </h5> <br />

     <div class="col-lg-4" >        
         <br />
            
         <h5>Idade: </h5> <br />
         <asp:TextBox runat="server" ID="TxtIdade"></asp:TextBox>
         <br /> <br />
         <h5>Localização: </h5> <br />
         <asp:TextBox runat="server" ID="TxtLocalizacao"></asp:TextBox>
         <br /> <br />

         <asp:Label runat="server" Text="Sexo:" ID="lblSexo"></asp:Label><br />
          
        <form>
    <input type="radio" name="season" value="Feminino" checked>Feminino<br />
    <input type="radio" name="season" value="Masculino">Masculino   
        </form>
         <br /> <br />
                </div>


      <div class="col-lg-4" > 
               
         <br /> <br />

         <h5>Dias da semana: </h5> <br />
         <div class="row">
         <form>
         <input type="radio" name="season" value="D">D 
         </form>
         <form>
         <input type="radio" name="season" value="S1">S 
         </form>
         <form>
         <input type="radio" name="season" value="T">T 
         </form>
         <form>
         <input type="radio" name="season" value="Q1" >Q 
         </form>
         <form>
         <input type="radio" name="season" value="Q2" >Q 
         </form>
         <form>
         <input type="radio" name="season" value="S2" >S 
         </form>
         <form>
         <input type="radio" name="season" value="S3" >S 
         </form>
         <br />
         </div>
         </div>

        <div class="col-lg-4" >
        <p style="height: 45px"></p>
        <h5>Carga horária: </h5> <br /> <br />
        <h5>Valor oferecido: </h5> <br /> <br />
        <asp:Button  runat="server" Text="Confirmar alterção" ID="Confirmar_alteração" OnClick="Confirmar_alteração_Click1" CssClass="btn btn-sucess" />   
        <div/>

        <p style="height: 10px"></p>
        <h5>Descrição: </h5> <br />
        <asp:Label runat="server" Text="Esta é uma das partes mais importantes do seu perfil. Informe suas necessidades e particularidades (como deficiências e medicações). Se preciso, especifique dados mensionados acima. Lembre-se que uma boa descrição auxiliará a encontrar o(a) cuidador(a) mais adequado." ID="Label1"></asp:Label><br />
        <asp:TextBox runat="server" ID="TxtDescricao" TextMode="MultiLine" Rows="5"></asp:TextBox><br /><br />

       
         

</asp:Content>


