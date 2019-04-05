<%@ Page Title="" Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="raport.aspx.cs" Inherits="Projet.raport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <asp:ImageButton ID="ImageButton_download_raport" runat="server" 
        ImageUrl="~/icons/download_,100px.png" Height="62px" Width="79px" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Click to download"></asp:Label>
        </center>

</asp:Content>
