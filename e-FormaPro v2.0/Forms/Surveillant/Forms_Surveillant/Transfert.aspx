<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Transfert.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Transfert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:99%; height: 331px;">
        <tr>
           
            <td align="center" class="style5">
                <asp:Label ID="Label1" runat="server" BorderColor="#006666" 
                    BorderStyle="Double" Font-Bold="True" Font-Names="Arial Black" 
                    Font-Size="Larger" Text="Transfert" Width="375px"></asp:Label>
                <br />
            </td>
            
        </tr>
        <tr>
            
              
            <td class="style5" align="center">
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" 
                    GridLines="None" style="margin-left: 0px; margin-top: 0px;" Height="156px" 
                    Width="617px">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Nom_Complet" HeaderText="Nom complet" 
                            ReadOnly="True" SortExpression="Nom_Complet" />
                        <asp:BoundField DataField="Niveaux_Scolaire" HeaderText="Niveaux scolaire" 
                            SortExpression="Niveaux_Scolaire" />
                        <asp:TemplateField HeaderText="Filiére" SortExpression="Nom_Complet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" Width="119px">
                                    <asp:ListItem>TDI</asp:ListItem>
                                    <asp:ListItem>TRI</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                                    SelectCommand="SELECT [Nom] FROM [Filieres]"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Groupe" SortExpression="Nom_Complet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="102px">
                                    <asp:ListItem>Gr01</asp:ListItem>
                                    <asp:ListItem>Gr02</asp:ListItem>
                                    <asp:ListItem>Gr03</asp:ListItem>
                                    <asp:ListItem>Gr04</asp:ListItem>
                                </asp:DropDownList>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                                    SelectCommand="SELECT [Nom] FROM [Groupes]"></asp:SqlDataSource>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Modification" SortExpression="Nom_Complet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" BorderStyle="None" ForeColor="#00CC99" 
                                    Height="26px" Text="Modifier" Width="99px" />
                            </ItemTemplate>
                        </asp:TemplateField>
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
                </td>
        </tr>
        <tr>
            
            <td align="center" class="style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                    SelectCommand="SELECT [Nom Complet] AS Nom_Complet, [Niveaux Scolaire] AS Niveaux_Scolaire FROM [V_candidatstest]">
                </asp:SqlDataSource>
                <br />
            </td>
            
        </tr>
    </table>
</asp:Content>
