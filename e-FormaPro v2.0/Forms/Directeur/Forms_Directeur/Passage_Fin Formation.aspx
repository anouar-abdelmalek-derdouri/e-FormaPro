<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Passage_Fin Formation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Surveillance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table style="width:100%;">
            <tr>

                <td class="style1" style="width: 80px">
                    &nbsp;</td>
               
            </tr>


            <tr>

                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label1" runat="server" Text="Examen :"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="DropDownList_Examen" runat="server">
                        <asp:ListItem>Fin de formation</asp:ListItem>
                        <asp:ListItem>Passage</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label2" runat="server" Text="Filière :"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="DropDownList_Filiere" runat="server">
                        <asp:ListItem>TDI</asp:ListItem>
                        <asp:ListItem>TRI</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label3" runat="server" Text="La date:"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox_date" runat="server" TextMode="Date"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 80px">
                </td>
                <td class="style6">
                    <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="255px" 
                         />
                </td>
            </tr>
            <tr>
                
                <td class="style6" colspan = "2">
                    <asp:GridView ID="GridView_ExamenSurveillance" runat="server" Width="688px">
                    </asp:GridView>
                </td>
            </tr>
        </table>
</asp:Content>
