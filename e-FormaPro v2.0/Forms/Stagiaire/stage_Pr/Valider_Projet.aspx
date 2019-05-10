<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Valider_Projet.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Stagiaire.stage_Pr.Valider_Projet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <style type="text/css">
        #Select1
        {
            width: 87px;
        }
    </style>

    <div style="text-align: center">
    
        Forme Stagiaire : Boutton&nbsp;Envoyer le Projet<br />
        <asp:Label ID="Label5" runat="server" Text="Vous rester  :"></asp:Label>
&nbsp;&nbsp;
        <asp:Label ID="Label11_ResteJours" runat="server" Text="12"></asp:Label>
&nbsp;
        <asp:Label ID="Label6" runat="server" Text="Jours"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Code Source  :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload1_CodeSource" runat="server" />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Presentation  :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload2_Presentaion" runat="server" />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Rapport :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:FileUpload ID="FileUpload3_Raport" runat="server" />
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Sujet  :"></asp:Label>
&nbsp;
        <asp:TextBox ID="TextBox1_Sujet" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="Button1_Enregestrer" runat="server" Text="Enregestrer" 
            Width="186px" />
        <br />
    
    </div>
</asp:Content>
