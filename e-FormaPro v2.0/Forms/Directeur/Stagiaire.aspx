<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Stagiaire.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Stagiaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
           
        }
        .Code{
             padding-left:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

      <table style="width:100%;">
                <tr>
                    <td class="auto-style2" align="center">
                        <asp:RadioButton ID="RadioButton_NomComplet" runat="server" Text="Nom Complet" 
                            GroupName="Stagiaire" />
                        <asp:RadioButton ID="RadioButton_Code" runat="server" Text="Code" 
                            GroupName="Stagiaire" class="code" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" align="center">
                        <asp:TextBox ID="TextBox_Recherche" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13" align="center">
                        <br />
                        <br />
                        <asp:Button ID="Button_Rechercher" runat="server" Text="Recherche" 
                            Width="140px" />
                        <asp:Button ID="Button_Actualiser" runat="server" Text="Actualiser" 
                            Width="138px" />
                        <br />
                        <asp:GridView ID="GridView_Stagiaire" runat="server" Width="785px">
                        </asp:GridView>
                        <br />
                        <br />
                        <asp:GridView ID="GridView_NoteStagiaire" runat="server" Width="785px">
                        </asp:GridView>
                    </td>
                </tr>
                </table>
</asp:Content>
