<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Club" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Nom du Club:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Nom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Les objectifs"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Objectifs" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Le responsable:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Responsable" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan = "2">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" />
            </td>
           
        </tr>
        <tr>
            <td colspan = "2">
                <asp:GridView ID="GridView_Club" runat="server">
                </asp:GridView>
            </td>
           
        </tr>
    </table>

</asp:Content>
