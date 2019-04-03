<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Jour Feries.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Jour_Feries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Date du jour:"></asp:Label>
            </td>
          
        </tr>
        <tr>
            <td class="style1">
                <asp:TextBox ID="TextBox_Date" runat="server" TextMode="Date"></asp:TextBox>
            </td>
         
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="La fête:"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="TextBox_Fete" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="173px" />
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView_JourFeries" runat="server">
                </asp:GridView>
            </td>
           
        </tr>
    </table>
</asp:Content>
