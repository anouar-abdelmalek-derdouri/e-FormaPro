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
    <h2>Crée un nouvaux club :</h2>
     <table>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Nom du club :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label2" runat="server" Text="Sujet :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_sujet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label3" runat="server" Text="Les regles :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_regles" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label4" runat="server" Text="Le president :"></asp:Label>
            </td>
            <td>
                
                <asp:RadioButton ID="RadioButton_f" Text="Formateurs" runat="server" />
               
                <br />
                <asp:RadioButton ID="RadioButton_s" Text="Stagiaires" runat="server" />
                
                
            </td>
            <td>
                 <asp:DropDownList ID="DropDownList_f"  runat="server" DataSourceID="SqlDataSource1" DataTextField="Matricule" DataValueField="Matricule">
                </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList_fn" runat="server" DataSourceID="SqlDataSource1" DataTextField="Nom" DataTextFormatString="Nom" >
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList_fp" runat="server" DataSourceID="SqlDataSource1" DataTextField="Prenom" DataValueField="Prenom">
                 </asp:DropDownList>
                <br />
                <asp:DropDownList ID="DropDownList_s" runat="server" DataSourceID="SqlDataSource2" DataTextField="Id" DataValueField="Id">
                </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList_sn" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nom" DataValueField="Nom" >
                 </asp:DropDownList>
                 <asp:DropDownList ID="DropDownList_sp" runat="server" DataSourceID="SqlDataSource2" DataTextField="Prenom" DataValueField="Prenom">
                 </asp:DropDownList>
            </td>

        </tr>
        <tr>
            <td colspan = "2" align="center" >
                <br />

                <asp:ImageButton ID="ImageButton_add" ImageUrl="~/img/icon_club/add_userg.png"
                    runat="server" Height="41px" Width="44px" OnClick="ImageButton_add_Click" />
                <asp:ImageButton ID="ImageButton_update" ImageUrl="~/img/icon_club/edit_user.png"
                    runat="server" OnClick="ImageButton_update_Click" Height="35px" Width="44px" />
                <asp:ImageButton ID="ImageButton_delete" ImageUrl="~/img/icon_club/remove_user.png"
                    runat="server" Height="35px" Width="44px" OnClick="ImageButton_delete_Click" />
            </td>
        </tr>
    </table>

    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#333C40" BorderStyle="None" BorderWidth="1px" CellPadding="3" Width="434px" AutoGenerateColumns="False" DataSourceID="SqlDataSource3">
        <Columns>
            <asp:BoundField DataField="NomClub" HeaderText="NomClub" SortExpression="NomClub" />
            <asp:BoundField DataField="Sujets" HeaderText="Sujets" SortExpression="Sujets" />
            <asp:BoundField DataField="Acces" HeaderText="Acces" SortExpression="Acces" />
            <asp:BoundField DataField="Régles" HeaderText="Régles" SortExpression="Régles" />
            <asp:BoundField DataField="Président" HeaderText="Président" SortExpression="Président" />
        </Columns>
        <FooterStyle BackColor="White" ForeColor="#000066" />
        <HeaderStyle BackColor="#333C40" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
        <RowStyle ForeColor="#000066" />
        <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#007DBB" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#00547E" />
    </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:combobox_président %>" SelectCommand="SELECT * FROM [Formateurs]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:combobox_président %>" SelectCommand="SELECT * FROM [Stagiaires]"></asp:SqlDataSource>
     <br />
     <br />
     <br />
     <h2>Raport :</h2>
     <asp:ImageButton ID="ImageButton_download_raport" runat="server" Height="62px" ImageUrl="~/img/Icon_club/download_,100px.png" Width="79px" />
     <br />
     <asp:Label ID="Label5" runat="server" Text="Click to download"></asp:Label>
    <br />

</asp:Content>
