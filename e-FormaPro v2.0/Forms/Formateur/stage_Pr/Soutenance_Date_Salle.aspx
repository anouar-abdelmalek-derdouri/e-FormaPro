<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Soutenance_Date_Salle.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Formateur.stage_Pr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <style type="text/css">
        #Label2,#Calendar1,#DropDownList1, #Label3
        {
            display:inline; margin-left:53px 20px 0px 19px; 
        }
        #Button1_Enregestr
        {  
            border:10px solid green;
        }
            
        
    </style>

    <div style="text-align: center">
    
        Forme Formateur : Botton&nbsp; Date Salle Soutenence<br />
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
&nbsp;<br />
        <asp:Label ID="Label2" runat="server" Text="Date :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Calendar ID="Calendar1" runat="server" BackColor="White" 
            BorderColor="#999999" Font-Names="Verdana" 
            Font-Size="8pt" ForeColor="Black" Height="180px" 
            Width="200px" CellPadding="4" DayNameFormat="Shortest">
            <DayHeaderStyle Font-Bold="True" Font-Size="7pt" BackColor="#CCCCCC" />
            <NextPrevStyle VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#808080" />
            <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
            <SelectorStyle BackColor="#CCCCCC" />
            <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
            <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
            <WeekendDayStyle BackColor="#FFFFCC" />
        </asp:Calendar>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Label ID="Label3" runat="server" Text="Salle"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1"  runat="server" Height="48px" 
            Width="101px">
            <asp:ListItem>A1</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Button ID="Button1_Enregestr" runat="server" 
            Text="Enregestrer" Width="276px" />
        <br />
        <br />
    
    </div>
    </asp:Content>
