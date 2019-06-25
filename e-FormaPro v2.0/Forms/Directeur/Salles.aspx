<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Salles.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Les_salles" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width:100%;">
        <tr>
            <td align="center">
                <br />
                <asp:Label ID="Label1" runat="server" Text="La Salle :"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox_Salle" runat="server" Width="225px"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" Text="Capacité :"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox_Capacite" runat="server" Width="225px"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Type :"></asp:Label>
                <br />
                <asp:RadioButton ID="RadioButton_Cours" runat="server" GroupName="Type" Text="Cours" />
                <br />
                <asp:RadioButton ID="RadioButton_Atelier" runat="server" GroupName="Type" Text="Atelier" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style3" align="center">
                <asp:Button ID="_Ajouter" class="btn btn-primary" runat="server" Text="Ajouter"  />
                <br />
                <br />
            </td>
          
        </tr>
        <tr>
            <td class="style3" align="center">
                <asp:GridView ID="Aff" runat="server" Width="678px" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#E3EAEB" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F8FAFA" />
                    <SortedAscendingHeaderStyle BackColor="#246B61" />
                    <SortedDescendingCellStyle BackColor="#D4DFE1" />
                    <SortedDescendingHeaderStyle BackColor="#15524A" />
                </asp:GridView>
            </td>
          
        </tr>
    </table>

</asp:Content>
