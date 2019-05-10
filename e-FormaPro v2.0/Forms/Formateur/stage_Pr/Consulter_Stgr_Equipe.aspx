<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Consulter_Stgr_Equipe.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Formateur.stage_Pr.Consulter_Stgr_Equipe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <div style="text-align: center">
    
        Forme Formateur : Button Consulter les Stagiaires<br />
        <br />
        <asp:Label ID="Label1" runat="server" style="text-align: left" 
            Text="Rechercher Par :"></asp:Label>
        <br />
        <asp:RadioButton ID="RadioButton1NomPren" runat="server" Text="Nom Ou Prénom" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1_Numero" runat="server" Text="Numero" />
&nbsp;<br />
        <asp:TextBox ID="TextBox1_Recherch" runat="server" Width="206px"></asp:TextBox>
        <br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            GridLines="Vertical" Width="803px">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
        <br />
    
    </div>
</asp:Content>
