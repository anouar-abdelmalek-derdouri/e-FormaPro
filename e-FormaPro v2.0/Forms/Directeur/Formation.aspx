<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Formation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Formation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
     <table style="width:100%;">
        <tr>
            <td class="style3">
                <asp:Label ID="Label1" runat="server" Text="La formation:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Formation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3">
                <asp:Label ID="Label2" runat="server" Text="L'abréviation:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Abreviation" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan = "2">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="163px" />
            </td>
           
        </tr>
        <tr>
            <td colspan = "2">
                <asp:GridView ID="GridView_Formation" runat="server" Width="770px">
                </asp:GridView>
            </td>
           
        </tr>
    </table>
</asp:Content>
