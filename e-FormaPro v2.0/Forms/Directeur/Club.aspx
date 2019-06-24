<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Club.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Club" %>

<script runat="server">

    protected void ImageButton_update_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("listclubs.aspx");
    }
</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 40%;

        }
        .auto-style2 {
            width: 107px;
        }
        .auto-style3 {
            width:50%;
        }
        .auto-style4 {
            width: 40%;
            height: 62px;
        }
        .auto-style5 {
            width: 107px;
            height: 62px;
        }
        .auto-style6 {
            width: 50%;
            height: 62px;
        }
        .auto-style7 {
            height: 62px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <h2>Crée un nouvaux club :</h2>
     <table>
        <tr>
<<<<<<< HEAD
            <td align="center" class="auto-style1">
                &nbsp;</td>
            <td align="left" class="auto-style2">
                <asp:Label ID="Label1" runat="server" Text="Nom du Club:"></asp:Label>
                </td>
            <td align="left" class="auto-style3">
                <br />
                <asp:TextBox   ID="TextBox_Nom" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style4">
                </td>
            <td align="left" class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Les objectifs:"></asp:Label>
                </td>
            <td align="left" class="auto-style6">
                <br />
                <asp:TextBox ID="TextBox_Objectifs" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1">
                &nbsp;</td>
            <td align="left" class="auto-style2">
                <asp:Label ID="Label3" runat="server" Text="Le responsable:"></asp:Label>
                </td>
            <td align="left" class="auto-style3">
                <br />
                <asp:TextBox ID="TextBox_Responsable" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <br />
                <asp:Button ID="Button_Ajouter" class="btn btn-primary" runat="server" Text="Ajouter" />
                <br />
                <br />
=======
            <td class="style1">
                <asp:Label ID="Label111" runat="server" Text="Nom du club :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label22" runat="server" Text="Sujet :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label33" runat="server" Text="Les regles :"></asp:Label>
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
>>>>>>> bd3691020842266c8500e2071f88d09d99830951
            </td>
        </tr>
        <tr>
<<<<<<< HEAD
            <td align="center" colspan="3">
                <asp:GridView ID="GridView_Club" runat="server" Width="346px">
                </asp:GridView>
=======
            <td colspan = "2" align="center" >
                <asp:ImageButton ID="ImageButton_add" ImageUrl="~/img/icon_club/add_user_group_man_man_32px.png"
                    runat="server" />
                <asp:ImageButton ID="ImageButton_update" ImageUrl="~/img/icon_club/add_user_group_man_man_32px.png"
                    runat="server" OnClick="ImageButton_update_Click" />
                <asp:ImageButton ID="ImageButton_delete" ImageUrl="~/img/icon_club/add_user_group_man_man_32px.png"
                    runat="server" />
>>>>>>> bd3691020842266c8500e2071f88d09d99830951
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
     <br />
     <br />
     <h2>Raport :</h2>
     <asp:ImageButton ID="ImageButton_download_raport" runat="server" Height="62px" ImageUrl="~/img/Icon_club/download_,100px.png" Width="79px" />
     <br />
     <asp:Label ID="Label5" runat="server" Text="Click to download"></asp:Label>
    <br />

</asp:Content>
