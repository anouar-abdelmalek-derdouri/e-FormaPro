<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Club" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 66px;
        }
        .auto-style3 {
            width: 164px;
        }
        .auto-style4 {
            width: 66px;
            height: 24px;
        }
        .auto-style5 {
            width: 164px;
            height: 24px;
        }
        .auto-style6 {
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label1" runat="server" Text="Nom Club :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_NomClub" runat="server" Width="269px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Sujet :"></asp:Label>
            </td>
            <td class="auto-style6">
                <asp:TextBox ID="TextBox_Sujet" runat="server" Width="269px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label3" runat="server" Text="Regles :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Regles" runat="server" Width="269px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:RadioButton ID="RadioButton_Stagiaires" runat="server" GroupName="StagiaireFormateur" Text="Stagiaires" />
                <asp:RadioButton ID="RadioButton_Formateur" runat="server" GroupName="StagiaireFormateur" Text="Formateur" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label4" runat="server" Text="Numero Stagiaire:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_NumeroStagiaire" runat="server" Width="190px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label5" runat="server" Text="Nom Stagiaires :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_NomStagiaire" runat="server" Width="190px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Prénom Stagiaires :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_PrenomStagiaire" runat="server" Width="190px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label7" runat="server" Text="Numero Formateur :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_NumeroFormateur" runat="server" Width="190px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Text="Nom Formateur :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_NomFormateur" runat="server" Width="190px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label9" runat="server" Text="Prénom Formateur :"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_PrenomFormateur" runat="server" Width="190px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" />
                <asp:Button ID="Button_Modifier" runat="server" Text="Modifier" />
                <asp:Button ID="Button_Supprimer" runat="server" Text="Supprimer" />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">&nbsp;</td>
            <td class="auto-style3">&nbsp;</td>
            <td>
                <asp:GridView ID="GridView_Afficher" runat="server">
                </asp:GridView>
            </td>
        </tr>
    </table>

</asp:Content>
