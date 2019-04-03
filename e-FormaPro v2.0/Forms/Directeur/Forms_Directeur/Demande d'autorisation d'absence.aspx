<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Demande d'autorisation d'absence.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Demande_d_autorisation_d_absence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan = "2">
                <asp:GridView ID="bsence" runat="server" Width="783px">
                </asp:GridView>
            </td>
           
           
        </tr>
        <tr>
            <td class="style4">
                <asp:Button ID="Button_Confirmer" runat="server" Text="Confirmer" 
                    Width="259px" />
            </td>
            <td class="style3">
                <asp:Button ID="Button_Refuser" runat="server" Text="Refuser" Width="182px" />
            </td>
           
        </tr>
       
    </table>
</asp:Content>
