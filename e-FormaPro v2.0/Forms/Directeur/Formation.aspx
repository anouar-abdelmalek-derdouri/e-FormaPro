<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Formation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Formation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style2 {
            width: 35%;
            height: 82px;
        }
        .auto-style3 {
            height: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
     <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="La formation:"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                <br />
                <asp:TextBox ID="TextBox_Formation" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label2" runat="server" Text="L'abréviation:"></asp:Label>
            </td>
            <td class="auto-style3">
                <br />
                <br />
                <asp:TextBox ID="TextBox_Abreviation" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan = "3" align="center">
                <br />
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="163px" class="btn btn-primary"/>
                <br />
                <asp:GridView ID="GridView_Formation" runat="server" Width="770px" Height="141px">
                </asp:GridView>
            </td>
           
        </tr>
        </table>
</asp:Content>
