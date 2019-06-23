<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Formateur/Forms_Club/Site2.Master" AutoEventWireup="true"
    CodeBehind="Listclub.aspx.cs" Inherits="Projet.Listclub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Liste des clubs :
    </h2>
    <asp:Button ID="Button_afiche" runat="server" Text="afficher" 
        onclick="Button_afiche_Click" />
    
    <p>
        <asp:ListView ID="ListViewpub" runat="server">
            <ItemTemplate>
                <table style="float: left">
                    <tr>
                        <td>
                            <asp:Image ID="img" Width="150px" Height="150px" ImageUrl="~/images/1.jpg" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h1>
                                (responsable)</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                (description)(description)(description)(description)</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>
                                <linkbutton>Telecharger le fichier(PDF ou Video)</linkbutton>
                            </h3>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView>
    </p>
</asp:Content>
