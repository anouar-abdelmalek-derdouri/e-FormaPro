<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Réunion.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
     <table style="width:100%;">
    <tr>
        <td class="style6">
            <br />
            <asp:Label ID="Label6" runat="server" Text="Numero :"></asp:Label>
        </td>
        <td class="style3">
            <br />
            <br />
            <asp:TextBox ID="TextBox_Numero" runat="server" Width="41px" 
                BackColor="#669999" style="margin-left: 0px"></asp:TextBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
        </td>
        <td class="style19">
            <asp:TextBox ID="TextBox_Date" runat="server" Width="189px" 
                TextMode="Date"></asp:TextBox>
            <br />
            <br />
        </td>
        </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label7" runat="server" Text="Heure:"></asp:Label>
        </td>
        <td class="style19">
            <asp:TextBox ID="TextBox_Heure" runat="server" TextMode="Time" Width="76px"></asp:TextBox>
            <br />
            <br />
        </td>
        <tr>
        <td class="style1">
            <asp:Label ID="Label3" runat="server" Text="Les objectifs"></asp:Label>
        </td>
        <td class="style5">
            <asp:TextBox ID="TextBox_Objectifs" runat="server" TextMode="MultiLine" 
                Width="186px" Height="79px"></asp:TextBox>

            <br />
            <br />

        </td>
    </tr>
    <tr>
        <td class="style7">
            <asp:Label ID="Label4" runat="server" Text="Les participants"></asp:Label>
        </td>
        <td class="style19">
            <asp:DropDownList ID="DropDownList_Participants" runat="server" Width="125px">
                <asp:ListItem>Anoir derdouri</asp:ListItem>
                <asp:ListItem>Safae errimi</asp:ListItem>
                <asp:ListItem>Fatimezzahra errimi</asp:ListItem>
                <asp:ListItem>Abdessamad</asp:ListItem>
                <asp:ListItem>Hamza richi</asp:ListItem>
                <asp:ListItem>ana</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="Button_Ajouter_Participent" runat="server"
                Text="+" Width="27px" Height="22px" 
                />
            <br />
            <br />
            <br />
            <asp:ListBox ID="ListBox_Participants" runat="server" Width="183px">
                <asp:ListItem>Anoir derdouri </asp:ListItem>
                <asp:ListItem>ana</asp:ListItem>
            </asp:ListBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="style7" align="center" colspan="2">
            <br />
            <asp:Button ID="Button_Ajouter" runat="server"
                Text="Ajouter" Width="79px"  class="btn btn-primary"/>
            <br />
            <br />
            <asp:GridView ID="GridView_Reunion" runat="server" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" Width="591px">
                <AlternatingRowStyle BackColor="Gainsboro" />
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
            
        </td>
    </tr>
    <tr>
        <td class="style7" align="center" colspan="2">
            
            <asp:ListBox ID="ListBox2" runat="server" Width="325px">
                <asp:ListItem>Anoir derdouri </asp:ListItem>
                <asp:ListItem>ana</asp:ListItem>
            </asp:ListBox>
            
        </td>
    </tr>
    </table>
</asp:Content>
