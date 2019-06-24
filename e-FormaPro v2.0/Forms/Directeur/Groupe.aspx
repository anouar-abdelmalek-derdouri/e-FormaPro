<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Groupe.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Groupe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 88px;
            height: 70px;
        }
        .auto-style2 {
            width: 35%;
            height: 70px;
        }
        .auto-style3 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">


 

      <table class="nav-justified">
                    <tr>
                        <td class="auto-style2">
                            </td>
                        <td class="auto-style1">
                            <br />
                            <br />
                <asp:Label ID="Label1" runat="server" Text="Groupe:"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style3">
                            <br />
                            <br />
                <asp:DropDownList ID="DropDownList_Groupe" runat="server" Height="30px" Width="155px">
                </asp:DropDownList>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <br />
                <asp:Button ID="Button_Rechercher" runat="server" Text="Rechercher" 
                    Width="184px" class="btn btn-primary"/>
                            <br />
                            <br />
                <asp:GridView ID="GridView_Groupe" runat="server" Width="431px">
                </asp:GridView>
                        </td>
                    </tr>
                </table>
    
</asp:Content>
