<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Affectation des modules aux formateurs.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Affectation_des_modules_aux_formateurs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width:100%;">
        <tr>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Formateur:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="16px" 
                    Width="175px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text="Groupe:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Groupe" runat="server" Height="16px" 
                    Width="175px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Module:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Module" runat="server" Height="16px" 
                    Width="175px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan = "2">
                <asp:Button ID="_Ajouter" runat="server" Text="Ajouter" Width="163px" />
            </td>
          
        </tr>
        <tr>
            <td class="style3" colspan = "2">
                <asp:GridView ID="Affectation" runat="server" Width="678px">
                </asp:GridView>
            </td>
          
        </tr>
    </table>
</asp:Content>
