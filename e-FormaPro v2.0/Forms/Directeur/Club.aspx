<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Club" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;

        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            width:50%;
        }
        .auto-style4 {
            width: 40%;
            height: 62px;
        }
        .auto-style5 {
            width: 107px;
            height: 62px;
        }
        .auto-style6 {
            width: 50%;
            height: 62px;
        }
        .auto-style7 {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table style="width:100%;">
        <tr>
            <td align="center" class="auto-style1">
                &nbsp;</td>
            <td align="left" class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Nom du Club:"></asp:Label>
                </td>
            <td align="left" class="auto-style3">
                <br />
                <asp:TextBox   ID="TextBox_Nom" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style4">
                </td>
            <td align="left" class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Les objectifs:"></asp:Label>
                </td>
            <td align="left" class="auto-style6">
                <br />
                <asp:TextBox ID="TextBox_Objectifs" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1">
                &nbsp;</td>
            <td align="left" class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Le responsable:"></asp:Label>
                </td>
            <td align="left" class="auto-style3">
                <br />
                <asp:TextBox ID="TextBox_Responsable" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <br />
                <asp:Button ID="Button_Ajouter" class="btn btn-primary" runat="server" Text="Ajouter" />
                <br />
                <br />
            </td>
           
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:GridView ID="GridView_Club" runat="server" Width="346px">
                </asp:GridView>
            </td>
           
        </tr>
    </table>

</asp:Content>
