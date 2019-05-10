<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="LesStagiaires.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Entreprise.LesStagiaires" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <div style="text-align: center">
    
        &nbsp;Forme Encadrant: Boutton&nbsp;Consulte les Stagiaires (Avec les Module Et note)<br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp; 
        Filtrer Par&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
        <asp:RadioButton ID="RadioButton1_NomPrenom" runat="server" 
            Text="Nom Ou Prenom" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:RadioButton ID="RadioButton1_Numero" runat="server" Text="Numero" />
&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox1_NomPren_Numero" runat="server" 
            style="text-align: right; margin-left: 0px" Width="328px" 
           ></asp:TextBox>
        <br />
        <asp:GridView ID="GridView1" runat="server" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            Width="802px">
            <Columns>
                <asp:HyperLinkField HeaderText="Vers Page Noter" Text="Noter" />
            </Columns>
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
        <br />
        <br />
    
    </div>
</asp:Content>
