<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Réunion.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 239px;
        }
    </style>
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
                BackColor="Silver" style="margin-left: 0px" ReadOnly="True"></asp:TextBox>
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
            <br />
            <br />
        </td>
        <td class="style19">
            <asp:TextBox ID="TextBox_Heure" runat="server" TextMode="Time" Width="77px"></asp:TextBox>
            <asp:DropDownList ID="DropDownList_MatinOrApres" runat="server">
                <asp:ListItem>Matin</asp:ListItem>
                <asp:ListItem>Aprés midi</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <br />
        </td>
        <tr>
        <td class="style7">
            <asp:Label ID="Label8" runat="server" Text="Duree:"></asp:Label>
            <br />
        </td>
        <td class="style19">
            <asp:TextBox ID="TextBox_Duree" runat="server" Width="41px" 
                BackColor="White" style="margin-left: 0px"></asp:TextBox>
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
            <asp:DropDownList ID="DropDownList_Participants" runat="server" Width="165px" DataSourceID="SqlDataSource1" DataTextField="Nom complet" DataValueField="Nom complet" Height="22px">
            </asp:DropDownList>
            <asp:Button ID="Button_Ajouter_Participent" runat="server"
                Text="+" Width="27px" Height="22px" OnClick="Button_Ajouter_Participent_Click" 
                />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" SelectCommand="SELECT (Matricule+','+ Nom + ' ' + Prenom ) AS [Nom complet], Matricule FROM Formateurs"></asp:SqlDataSource>
            <br />
            <br />
            <br />
            <asp:ListBox ID="ListBox_Participants" runat="server" Width="192px" >
            </asp:ListBox>
            <br />
            <br />
        </td>
    </tr>
    <tr>
        <td class="auto-style1" align="center" colspan="2">
            <br />
            <asp:Button ID="Button_Ajouter" runat="server"
                Text="Ajouter" Width="79px"  class="btn btn-primary" OnClick="Button_Ajouter_Click"/>
            <br />
            <br />
            <asp:GridView ID="GridView_Reunion" runat="server" BackColor="White" 
                BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                GridLines="Vertical" Width="702px" AutoGenerateColumns="False" DataKeyNames="Id_Réunions" DataSourceID="SqlDataSource_Reunion" OnRowDataBound="GridView_Reunion_RowDataBound">
                <AlternatingRowStyle BackColor="Gainsboro" />
                <Columns>
                    <asp:BoundField DataField="Id_Réunions" HeaderText="Id_Réunions" InsertVisible="False" ReadOnly="True" SortExpression="Id_Réunions" />
                    <asp:BoundField DataField="Objectifs" HeaderText="Objectifs" SortExpression="Objectifs" />
                    <asp:BoundField DataField="DateD" HeaderText="DateD" SortExpression="DateD" />
                    <asp:BoundField DataField="HeureD" HeaderText="HeureD" SortExpression="HeureD" />
                    <asp:BoundField DataField="Duree" HeaderText="Duree" SortExpression="Duree" />
                    <asp:CommandField HeaderText="Les participants" SelectText="Participants" ShowSelectButton="True" />
                </Columns>
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
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource_Participants" ForeColor="#333333" GridLines="None" Width="241px">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Nom complet" HeaderText="Nom complet" ReadOnly="True" SortExpression="Nom complet" />
                </Columns>
                <EditRowStyle BackColor="#7C6F57" />
                <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#E3EAEB" />
                <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F8FAFA" />
                <SortedAscendingHeaderStyle BackColor="#246B61" />
                <SortedDescendingCellStyle BackColor="#D4DFE1" />
                <SortedDescendingHeaderStyle BackColor="#15524A" />
            </asp:GridView>
            <br />
            
            <asp:SqlDataSource ID="SqlDataSource_Reunion" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" SelectCommand="SELECT * FROM [Réunions]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource_Participants" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" SelectCommand="SELECT Formateurs.Nom + ' ' + Formateurs.Prenom AS [Nom complet] FROM Participants_Reunion INNER JOIN Formateurs ON Participants_Reunion.Formateur = Formateurs.Matricule WHERE (Participants_Reunion.Reunion = @idre)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView_Reunion" Name="idre" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            
        </td>
    </tr>
    <tr>
        <td class="style7" align="center" colspan="2">
            
            &nbsp;</td>
    </tr>
    </table>
</asp:Content>
