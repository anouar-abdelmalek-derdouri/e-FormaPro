<%@ Page Title="Accueil" Language="C#" MasterPageFile="~/Forms/Formateur/Forms_Club/Site1.Master" AutoEventWireup="false"
    CodeBehind="~/Forms/Formateur/Forms_Club/defaultpage.aspx.cs" Inherits="Projet.defaultpage" %>

<asp:Content ID="HeaderContentdefaultpage" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContentdefaultpage" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        (nom du club)
    </h2>
    <br />
    <p>
        (sujet + roles)
    </p>
    <p>
        (Nom et prénom de président)
    </p>
    <br />
    <h2>
        Les evennements
    </h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" runat="server" Height="200px" Width="800px" />
        
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
