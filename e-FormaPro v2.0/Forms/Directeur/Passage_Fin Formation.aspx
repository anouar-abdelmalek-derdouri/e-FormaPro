<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Passage_Fin Formation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width: 100%;" align="center">
        

        <tr>

            <td class="auto-style1">
                &nbsp;</td>

            <td class="style1" style="width: 80px">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Examen :"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style11">
                <br />
                <br />
                <asp:DropDownList ID="DropDownList_Examen" runat="server">
                    <asp:ListItem>Fin de formation</asp:ListItem>
                    <asp:ListItem>Passage</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="style1" style="width: 80px">
                <asp:Label ID="Label2" runat="server" Text="Filière :"></asp:Label>
            </td>
            <td class="style11">
                <asp:DropDownList ID="DropDownList_Filiere" runat="server">
                    <asp:ListItem>TDI</asp:ListItem>
                    <asp:ListItem>TRI</asp:ListItem>
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="style1" style="width: 80px">
                <asp:Label ID="Label3" runat="server" Text="La date:"></asp:Label>
                <br />
                <br />
            </td>
            <td class="style1">
                <asp:TextBox ID="TextBox_date" runat="server" TextMode="Date"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="255px"  class="btn btn-primary"/>
                <br />
                <asp:GridView ID="GridView_ExamenSurveillance" runat="server" Width="688px">
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
