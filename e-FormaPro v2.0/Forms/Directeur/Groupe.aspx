<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Groupe.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Groupe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">


     <table style="width:100%;">
        <tr>
            <td style="width: 298px">
                <asp:Label ID="Label1" runat="server" Text="Groupe:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Groupe" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td colspan = "2" style="width: 298px">
                <asp:Button ID="Button_Rechercher" runat="server" Text="Rechercher" 
                    Width="184px" />
            </td>
           
        </tr>
        <tr>
            <td colspan = "2" style="width: 298px">
                <asp:GridView ID="GridView_Groupe" runat="server">
                </asp:GridView>
            </td>
           
        </tr>
    </table>

</asp:Content>
