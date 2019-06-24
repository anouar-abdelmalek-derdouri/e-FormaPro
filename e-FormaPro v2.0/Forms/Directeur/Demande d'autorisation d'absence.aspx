<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Demande d'autorisation d'absence.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Demande_d_autorisation_d_absence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table style="width:100%;">
        <tr>
            <td colspan = "3" align="center">
                <br />
                <br />
                <asp:GridView ID="bsence" runat="server" Width="783px">
                </asp:GridView>
            </td>
           
           
        </tr>
        <tr>
            <td class="style4" align="center">
                <br />
                <asp:Button ID="Button_Confirmer" runat="server" Text="Confirmer" 
                    Width="184px" class="btn btn-primary" />
                <br />
                <br />
            </td>
            <td class="style4" align="center">
                <asp:Button ID="Button_Refuser" runat="server" Text="Refuser" Width="182px" class="btn btn-primary"/>
            </td>
            <td class="style3">
                &nbsp;</td>
           
        </tr>
       
        <tr>
            <td class="style4" align="center" colspan="2">
                <br />
                <asp:GridView ID="bsence0" runat="server" Width="783px">
                </asp:GridView>
                <br />
            </td>
            <td class="style3">
                &nbsp;</td>
           
        </tr>
       
    </table>
</asp:Content>
