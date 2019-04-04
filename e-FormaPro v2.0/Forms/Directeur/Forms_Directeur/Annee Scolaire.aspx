<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Annee Scolaire.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Annee_Scolaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width:100%;">
        <tr>
            <td style="width: 203px">
                <asp:Label ID="Label1" runat="server" Text="Année:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:TextBox ID="TextBox_Annee" runat="server" Width="207px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="188px" />
            </td>
        </tr>
        <tr>
            <td colspan ="2" style="width: 203px">
                <asp:GridView ID="GridView_AnneeScolaire" runat="server" Width="367px">
                </asp:GridView>
            </td>
            
        </tr>
    </table>
</asp:Content>
