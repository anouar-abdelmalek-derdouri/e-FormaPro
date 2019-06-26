<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="AnneeScolaire.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Annee_Scolaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 221px;
            height: 22px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
     <table style="width:100%;">
        <tr>
            <td align="center" class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Année:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList_Annee" runat="server" Height="16px" Width="101px">
                </asp:DropDownList>
            </td>
        </tr>
        </table>
</asp:Content>
