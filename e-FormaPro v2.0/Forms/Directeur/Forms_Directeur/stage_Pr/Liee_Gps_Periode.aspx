<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Liee_Gps_Periode.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.stage_Pr" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <div style="text-align: center">
    
        Forme Derectrice : Button Liee les Groupes par les Périodes<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" 
            ForeColor="Black" GridLines="Vertical" Width="815px">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
        <br />
&nbsp;<asp:Button ID="Button1" runat="server" style="text-align: right" 
            Text="Enregestre" Width="228px" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
   </asp:Content>
