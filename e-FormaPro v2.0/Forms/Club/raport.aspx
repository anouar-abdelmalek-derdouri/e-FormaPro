<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Club/Forms_Club/Site2.Master"
    AutoEventWireup="true" CodeBehind="~/Forms/Club/Forms_Club/raport.aspx.cs" Inherits="Projet.raport" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
        <asp:ImageButton ID="ImageButton_download_raport" runat="server" 
        ImageUrl="~/img/Icon_club/download_,100px.png" Height="62px" Width="79px" />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Click to download"></asp:Label>

</asp:Content>
