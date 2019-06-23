<%@ Page Title="Notification" Language="C#" MasterPageFile="~/Forms/Club/Site1.Master" AutoEventWireup="false"
    CodeBehind="~/Forms/Club/Notification.aspx.cs" Inherits="Projet.Notification" %>

<asp:Content ID="HeaderContentNotification" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContentNotification" runat="server" ContentPlaceHolderID="MainContent">
        <h2>
            Notification
        </h2>
    <asp:GridView ID="GridView_Notification" runat="server" BackColor="#DEBA84" 
            BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            CellSpacing="2">
        <Columns>
            <asp:CommandField DeleteText="Ne m’interesse pas" ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FFF1D4" />
        <SortedAscendingHeaderStyle BackColor="#B95C30" />
        <SortedDescendingCellStyle BackColor="#F1E5CE" />
        <SortedDescendingHeaderStyle BackColor="#93451F" />
    </asp:GridView>
</asp:Content>
