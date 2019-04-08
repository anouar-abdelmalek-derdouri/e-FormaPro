<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Salle.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Salle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
        <tr>
            <td class="style13">
            </td>
            <td class="style14">
                Salle :</td>
            <td class="style15">
                <asp:TextBox ID="TextBox_Salles" runat="server" Height="16px" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style16">
            </td>
            <td class="style17">
                Capacité :</td>
            <td class="style18">
                <asp:TextBox ID="TextBox_Capacité" runat="server" Height="16px" Width="186px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style6">
            </td>
            <td class="style7">
                Type :</td>
            <td class="style8">
                <asp:RadioButton ID="RadioButton_Cours" runat="server" GroupName="Type" 
                    Text="Cours" />
            </td>
        </tr>
        <tr>
            <td class="style20">
            </td>
            <td class="style19">
            </td>
            <td class="style5">
                <asp:RadioButton ID="RadioButton_Atelier" runat="server" GroupName="Type" 
                    Text="Atelier" />
            </td>
        </tr>
        <tr>
            <td class="style22">
            </td>
            <td class="style21">
            </td>
            <td class="style23">
                <asp:Button ID="Button_Ajouter" runat="server" Height="32px" Text="Ajouter" 
                    Width="113px" onclick="Button_Ajouter_Click" style="text-align: left" />
            </td>
        </tr>
    </table>
    <table style="width:100%;">
        <tr>
            <td class="style24">
                &nbsp;</td>
            <td class="style25">
                <asp:GridView ID="GridView_Salle" runat="server" BackColor="White" 
                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                    Width="810px" Height="163px" GridLines="Horizontal">
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <RowStyle ForeColor="#4A3C8C" BackColor="#E7E7FF" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <SortedAscendingCellStyle BackColor="#F4F4FD" />
                    <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                    <SortedDescendingCellStyle BackColor="#D8D8F0" />
                    <SortedDescendingHeaderStyle BackColor="#3E3277" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                    
                </asp:GridView>
            </td>
            <td>
                &nbsp;
            </td>
        </tr>
    </table>
</asp:Content>
