<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Demandes de certificat de scolarité.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Demandes_de_certificat_de_scolarité" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:97%;">
        <tr>
            
            <td align="center" class="style2">
                <asp:Label ID="Label1" runat="server" BorderColor="#0099CC" 
                    BorderStyle="Groove" CssClass="style2" Font-Bold="True" Font-Size="Larger" 
                    Text="Demandes certificats de scolarité" Width="789px"></asp:Label>
                <br />
            </td>
         
        </tr>
        
        <tr>
            
            <td align="center" class="style3">
              <br />
              <br />

                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="SqlDataSource2" Width="790px" CellPadding="4" ForeColor="#333333" 
                    GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Nom_Complet" HeaderText="Nom Complet" ReadOnly="True" 
                            SortExpression="Nom_Complet" />
                        <asp:BoundField DataField="Niveaux_Scolaire" HeaderText="Niveaux scolaire" 
                            SortExpression="Niveaux_Scolaire" >
                        <ItemStyle HorizontalAlign="Left" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Filiere" HeaderText="Filiere" 
                            SortExpression="Filiere" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Groupe" HeaderText="Groupe" 
                            SortExpression="Groupe" >
                        <ItemStyle HorizontalAlign="Center" />
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="Validation" SortExpression="Nom_Complet">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <EmptyDataTemplate>
                        Numéro
                    </EmptyDataTemplate>
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                    SelectCommand="SELECT [Nom Complet] AS Nom_Complet, [Niveaux Scolaire] AS Niveaux_Scolaire, [Filiere], [Groupe] FROM [V_candidatstest]">
                </asp:SqlDataSource>
              
            </td>
          
        </tr>
      <tr>
      <td align="right">
      <br />
       <br />

          <asp:Button ID="Button1" runat="server" Text="Exporter" Width="139px" 
              BorderColor="#3333FF" BorderStyle="Groove" Font-Bold="True" Font-Italic="False" 
              Font-Names="Arial Black" ForeColor="Black" />
      </td>
      </tr>
    </table>
</asp:Content>
