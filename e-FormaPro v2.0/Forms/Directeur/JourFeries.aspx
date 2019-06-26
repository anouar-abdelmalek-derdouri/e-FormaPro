<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="JourFeries.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Jour_Feries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 41px;
        }
        .auto-style2 {
            height: 41px;
            width: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

      <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
         
            <td class="auto-style1">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Date du jour:"></asp:Label>
            </td>
         
            <td class="auto-style1">
                <br />
                <br />
                <asp:TextBox ID="TextBox_Date" runat="server" TextMode="Date"></asp:TextBox>
            </td>
         
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
           
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="La fête:"></asp:Label>
            </td>
           
            <td class="auto-style1">
                <asp:TextBox ID="TextBox_Fete" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="173px" class="btn btn-primary"/>
                <asp:GridView ID="GridView_JourFeries" runat="server">
                </asp:GridView>
            </td>
           
        </tr>
        </table>
</asp:Content>
