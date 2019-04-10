<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Soutenence.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.stage_Pr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <div style="text-align: center">
    
        Forme Derectrice : Button Affictee les Projets au Formateur<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" 
            CellSpacing="1" GridLines="None" Width="808px">
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#594B9C" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#33276A" />
        </asp:GridView>
&nbsp;<br />
        <asp:Button ID="Button1" runat="server" style="text-align: right" 
            Text="Enregestre" />
        <br />
        <br />
        <br />
    
    </div>
 </asp:Content>
