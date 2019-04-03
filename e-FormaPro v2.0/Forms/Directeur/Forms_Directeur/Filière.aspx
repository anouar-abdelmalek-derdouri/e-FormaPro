<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Filière.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Filière" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="La filière:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Filiere" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Libéllé:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Libelle" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Formation:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Formation" runat="server">
                </asp:DropDownList>
            </td>
           
        </tr>
         <tr>
            <td colspan = "2">
                <asp:Button ID="_Ajouter" runat="server" Text="Ajouter" Width="163px" />
             </td>
           
           
        </tr>
         <tr>
            <td colspan = "2">
                <asp:GridView ID="GridView_Filiere" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="768px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField />
                        <asp:CheckBoxField />
                        <asp:ImageField>
                        </asp:ImageField>
                        <asp:ButtonField Text="Button" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
             </td>
           
           
        </tr>
    </table>

</asp:Content>
