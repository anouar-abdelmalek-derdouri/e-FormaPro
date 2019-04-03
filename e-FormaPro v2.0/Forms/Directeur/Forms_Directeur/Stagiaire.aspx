<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Stagiaire.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Stagiaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
                <tr>
                    <td class="style4">
                        <asp:RadioButton ID="RadioButton_NomComplet" runat="server" Text="Nom Complet" 
                            GroupName="Stagiaire" />
                    </td>
                </tr>
                <tr>
                    <td class="style7">
                        <asp:RadioButton ID="RadioButton_Code" runat="server" Text="Code" 
                            GroupName="Stagiaire" />
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        <asp:TextBox ID="TextBox_Recherche" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style13">
                        <asp:Button ID="Button_Rechercher" runat="server" Text="Recherche" 
                            Width="140px" />
                    </td>
                </tr>
                <tr>
                    <td class="style16">
                        <asp:Button ID="Button_Actualiser" runat="server" Text="Actualiser" 
                            Width="138px" />
                    </td>
                </tr>
                <tr>
                    <td class="style1">
                        <asp:GridView ID="GridView_Stagiaire" runat="server" Width="785px">
                        </asp:GridView>
                    </td>
                </tr>
                </table>
</asp:Content>
