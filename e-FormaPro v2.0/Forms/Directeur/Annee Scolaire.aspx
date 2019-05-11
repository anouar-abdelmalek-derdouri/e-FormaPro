<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Annee Scolaire.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Annee_Scolaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
     <table style="width:100%;">
        <tr>
            <td style="width: 203px">
                <asp:Label ID="Label1" runat="server" Text="Année:"></asp:Label>
            </td>
            <td style="width: 221px">
                <asp:DropDownList ID="DropDownList_Annee" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 221px">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan ="2" style="width: 203px">
                &nbsp;</td>
            
        </tr>
    </table>
</asp:Content>
