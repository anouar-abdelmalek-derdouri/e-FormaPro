<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
        <tr>
            <td style="width: 149px">
                &nbsp;</td>
            <td style="width: 138px">
                <asp:Label ID="Label1" runat="server" Text="Numéro :"></asp:Label>
            </td>
            <td style="width: 144px">
                <asp:TextBox ID="TextBox_numéro" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px">
                <asp:Label ID="Label2" runat="server" Text="Nom Module :"></asp:Label>
            </td>
            <td style="width: 138px">
                <asp:TextBox ID="TextBox_Nom" runat="server"></asp:TextBox>
            </td>
            <td style="width: 144px">
                <asp:Label ID="Label3" runat="server" Text="Mass Horraire :"></asp:Label>
            </td>
            <td style="width: 106px">
                <asp:TextBox ID="TextBox_MasseHoraire" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px">
                <asp:Label ID="Label4" runat="server" Text="Niveau :"></asp:Label>
            </td>
            <td style="width: 138px">
                <asp:DropDownList ID="DropDownList_Niveau" runat="server">
                </asp:DropDownList>
            </td>
            <td style="width: 144px">
                <asp:Label ID="Label5" runat="server" Text="Semestre :"></asp:Label>
            </td>
            <td style="width: 106px">
                <asp:DropDownList ID="DropDownList_semester" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 149px">
                <asp:Label ID="Label6" runat="server" Text="Filiere :"></asp:Label>
            </td>
            <td style="width: 138px">
                <asp:DropDownList ID="DropDownList_fieliere" runat="server">
                </asp:DropDownList>
            </td>
            <td style="width: 144px">
                <asp:Label ID="Label7" runat="server" Text="Types :"></asp:Label>
            </td>
            <td style="width: 106px">
                <asp:Label ID="Label8" runat="server" Text="Pratique :"></asp:Label>
            </td>
            <td style="width: 138px">
                <asp:TextBox ID="TextBox_Pratique" runat="server" Width="54px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 149px">
                &nbsp;</td>
            <td style="width: 138px">
                <asp:Label ID="Label10" runat="server" Text="Coefficient :"></asp:Label>
            </td>
            <td style="width: 144px">
                &nbsp;</td>
                <td style="width: 106px">
                <asp:Label ID="Label9" runat="server" Text="Theorique :"></asp:Label>
                </td>
                <td style="width: 138px">
                <asp:TextBox ID="TextBox_Theorique" runat="server" Width="52px"></asp:TextBox>
                </td>
        </tr>
        <tr>
            <td style="width: 149px">
                &nbsp;</td>
            <td style="width: 138px">
                <asp:Button ID="button_ajouter" runat="server" Text="Ajouter" Width="136px" />
            </td>
            <td style="width: 144px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px;"  colspan="4">
                <asp:GridView ID="GridView_Module" runat="server" Width="563px">
                </asp:GridView>
            </td>
           
          
        </tr>
        <tr>
            <td style="width: 149px">
                &nbsp;</td>
            <td style="width: 138px">
                &nbsp;</td>
            <td style="width: 144px">
                &nbsp;</td>
                <td style="width: 106px">

                </td>
        </tr>
        <tr>
            <td style="width: 149px">
                &nbsp;</td>
            <td style="width: 138px">
                &nbsp;</td>
            <td style="width: 144px">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
