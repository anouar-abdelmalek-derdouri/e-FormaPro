<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Demande d'autorisation d'absence.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Demande_d_autorisation_d_absence" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:99%; height: 372px;" >
        <tr>
            
            <td align="center" class="style3">
                    <asp:Label ID="Label1" runat="server" BorderStyle="Groove" Font-Bold="True" 
                        Font-Names="Californian FB" Font-Size="Larger" Text="Demandes d 'autorisation d' absence" 
                        Width="691px" BorderColor="#666666"></asp:Label>
                </td>
            
        </tr>
        <tr>
            
            <td align="center" class="style3">
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" 
                    CellPadding="4" ForeColor="Black" 
                    GridLines="Vertical" Width="701px" Height="234px" 
                    DataSourceID="SqlDataSource1">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField HeaderText="Nom complet" DataField="Nom_Complet" 
                            ReadOnly="True" SortExpression="Nom_Complet" />
                        <asp:BoundField HeaderText="Filiere" DataField="Filiere" 
                            SortExpression="Filiere" />
                        <asp:BoundField HeaderText="Niveaux scolaire" DataField="Niveaux_Scolaire" 
                            SortExpression="Niveaux_Scolaire" />
                        <asp:BoundField HeaderText="Groupe" DataField="Groupe" 
                            SortExpression="Groupe" />
                        <asp:TemplateField HeaderText="Validation" SortExpression="Nom_Complet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:RadioButton ID="RadioButton1" runat="server" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#F7F7DE" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#FBFBF2" />
                    <SortedAscendingHeaderStyle BackColor="#848384" />
                    <SortedDescendingCellStyle BackColor="#EAEAD3" />
                    <SortedDescendingHeaderStyle BackColor="#575357" />
                </asp:GridView>
               
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                    SelectCommand="SELECT [Nom Complet] AS Nom_Complet, [Filiere], [Niveaux Scolaire] AS Niveaux_Scolaire, [Groupe] FROM [V_candidatstest]">
                </asp:SqlDataSource>
               
            </td>
            
        </tr>
     
         <tr>
                
                
                
                <td class="style3">
                    &nbsp;</td>
                
            </tr>
    </table>
</asp:Content>
