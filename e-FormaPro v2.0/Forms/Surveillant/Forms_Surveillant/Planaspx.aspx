<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Planaspx.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Planaspx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%; height: 117px;">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" BorderStyle="Groove" Font-Bold="True" 
                    Font-Names="Californian FB" Font-Size="Larger" Text="Plan" 
                    Width="753px"></asp:Label>
            </td>
           
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
        
        <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" ForeColor="Black" 
                    GridLines="Vertical" Width="676px" Height="215px" 
                    DataSourceID="SqlDataSource1" 
                    >
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField HeaderText="Le surveillant" DataField="Nom_Complet" 
                            ReadOnly="True" SortExpression="Nom_Complet" />
                        <asp:BoundField DataField="Nom_Complet" HeaderText="Examen" 
                            SortExpression="Nom_Complet" />
                        <asp:BoundField HeaderText="Groupe à surveillée" DataField="Groupe" 
                            SortExpression="Groupe" />
                        <asp:BoundField HeaderText="Filiere" DataField="Filiere" 
                            SortExpression="Filiere" />
                        <asp:BoundField HeaderText="Niveaux scolaire" DataField="Niveaux_Scolaire" 
                            SortExpression="Niveaux_Scolaire" />
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                    SelectCommand="SELECT [Nom Complet] AS Nom_Complet, [Filiere], [Niveaux Scolaire] AS Niveaux_Scolaire, [Groupe] FROM [V_candidatstest]">
                </asp:SqlDataSource>
                </td>
            
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" BorderColor="#999999" 
                    BorderStyle="Outset" ForeColor="White" style="margin-left: 0px" Text="Modifier" 
                    Width="95px" />
            </td>
            
        </tr>
    </table>

</asp:Content>
