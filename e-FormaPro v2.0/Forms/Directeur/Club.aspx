<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Club" %>

<script runat="server">

    protected void ImageButton_update_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("listclubs.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Nom du club :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Sujet :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Les regles :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Le president :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan = "2" align="center" >
                <asp:ImageButton ID="ImageButton_add" ImageUrl="~/img/icon_club/add_user_group_man_man_32px.png"
                    runat="server" />
                <asp:ImageButton ID="ImageButton_update" ImageUrl="~/img/icon_club/add_user_group_man_man_32px.png"
                    runat="server" OnClick="ImageButton_update_Click" />
                <asp:ImageButton ID="ImageButton_delete" ImageUrl="~/img/icon_club/add_user_group_man_man_32px.png"
                    runat="server" />
            </td>
        </tr>
    </table>

    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="434px">
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
    <br />

</asp:Content>
