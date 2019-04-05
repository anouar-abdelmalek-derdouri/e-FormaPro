<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Demandes de transfert.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Demandes_de_transfert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%; height: 443px;">
            <tr>
                
                <td align="center">
                    <asp:Label ID="Label1" runat="server" BorderStyle="Groove" Font-Bold="True" 
                        Font-Names="Californian FB" Font-Size="Larger" Text="Demandes de transfert" 
                        Width="691px"></asp:Label>
                </td>
               
            </tr>
            <tr>
                
                <td align="center" class="style1">
                <br/>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                        CellPadding="3" DataSourceID="SqlDataSource2" 
                        ForeColor="Black" GridLines="Vertical" Height="289px" 
                      >
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="Nom_Complet" HeaderText="Nom complet" 
                                SortExpression="Nom_Complet" ReadOnly="True" />
                            <asp:BoundField DataField="Filiere" HeaderText="Filiere" 
                                SortExpression="Filiere">
                            </asp:BoundField>
                            <asp:BoundField DataField="Niveaux_Scolaire" HeaderText="Niveaux scolaire" 
                                SortExpression="Niveaux_Scolaire" />
                            <asp:BoundField DataField="Groupe" HeaderText="Groupe" 
                                SortExpression="Groupe" />
                            <asp:TemplateField HeaderText="Message" SortExpression="Nom_Complet">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="MultiLine" Width="268px">The purpose of life is not to be happy. It is to be useful, 
to be honorable, to be compassionate, to have it make some difference that you have lived and lived well.   
Be not afraid of life. Believe that life is worth living, and your belief will help create the fact.
</asp:TextBox>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Validation" SortExpression="Nom_Complet">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px" 
                                        Width="124px">
                                        <asp:ListItem>validée</asp:ListItem>
                                        <asp:ListItem>Non validée</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                        SelectCommand="SELECT [Nom Complet] AS Nom_Complet, [Filiere], [Niveaux Scolaire] AS Niveaux_Scolaire, [Groupe] FROM [V_candidatstest]">
                    </asp:SqlDataSource>
                   
                </td>
               
            </tr>
            <tr>
                
                <td>
                    &nbsp;</td>
                
                <td>
                    <asp:Button ID="Button1" runat="server" BorderColor="Black" 
                        BorderStyle="Groove" ForeColor="#666699" Text="Transférer" Width="94px" />
                </td>
                
            </tr>
        </table>
</asp:Content>
