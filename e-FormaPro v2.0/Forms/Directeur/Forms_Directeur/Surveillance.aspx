<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Surveillance.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Surveillance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table style="width:100%;">
            <tr>

                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label6" runat="server" Text="La surveillance:"></asp:Label>
                </td>
               
            </tr>


            <tr>

                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label1" runat="server" Text="Examen :"></asp:Label>
                </td>
                <td class="style11">
                    <asp:DropDownList ID="DropDownList_Examen" runat="server">
                        <asp:ListItem>EFM</asp:ListItem>
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
                    <asp:Label ID="Label3" runat="server" Text="Groupes :"></asp:Label>
                </td>
                <td class="style1">
                    <asp:CheckBoxList ID="CheckBoxList_Groupe" runat="server" 
                        style="margin-left: 0px">
                        <asp:ListItem>GA</asp:ListItem>
                        <asp:ListItem>GB</asp:ListItem>
                        <asp:ListItem>GC</asp:ListItem>
                        <asp:ListItem>GD</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label4" runat="server" Text="Salles :"></asp:Label>
                </td>
                <td class="style4">
                    <asp:CheckBoxList ID="CheckBoxList_Salle" runat="server">
                        <asp:ListItem>A1</asp:ListItem>
                        <asp:ListItem>A2</asp:ListItem>
                        <asp:ListItem>A3</asp:ListItem>
                        <asp:ListItem>A4</asp:ListItem>
                        <asp:ListItem>B1</asp:ListItem>
                        <asp:ListItem>B2</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 80px">
                    <asp:Label ID="Label5" runat="server" Text="Surveillants :"></asp:Label>
                </td>
                <td class="style1">
                    <asp:CheckBoxList ID="CheckBoxList_Surveillant" runat="server">
                        <asp:ListItem>S1</asp:ListItem>
                        <asp:ListItem>S2</asp:ListItem>
                        <asp:ListItem>S3</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
            </tr>
            <tr>
                <td class="style1" style="width: 80px">
                </td>
                <td class="style6">
                    <asp:Button ID="Button_Generer" runat="server" Text="Générer" Width="255px" 
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
