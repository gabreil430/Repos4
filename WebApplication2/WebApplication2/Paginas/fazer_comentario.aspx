<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="fazer_comentario.aspx.cs" Inherits="WebApplication2.Paginas.fazer_comentario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:Label runat="server" Text="" ID="lblExperiencia"></asp:Label><br /><br />

     <asp:Label runat="server" Text="" ID="lblAvaliar"></asp:Label><br />
            <asp:DropDownList ID="avaliar" runat="server">
            <asp:ListItem Text="Muito bom" Value="Muito bom" />
            <asp:ListItem Text="Bom" Value="Bom" />
            <asp:ListItem Text="Regular" Value="Regular" />
            <asp:ListItem Text="Ruim" Value="Ruim" />
            <asp:ListItem Text="Muito ruim" Value="Muito ruim" />
        </asp:DropDownList><br /><br />
     <asp:Label runat="server" Text="e" ID="lblFazer"></asp:Label><br />
    <asp:TextBox runat="server" ID="txtComentario" Width="10000px" TextMode="MultiLine" Rows="5"></asp:TextBox><br /><br />
     <asp:Button runat="server" Text="Publicar" ID="btnPublicar" OnClick="btnPublicar_Click" CssClass="btn btn-sucess, content" /> <br />

</asp:Content>

