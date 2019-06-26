<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Stagiaire.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Stagiaire" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 20px;
           
        }
        .Code{
             padding-left:50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

      <table style="width:100%;">
                <tr>
                    <td class="auto-style2" align="center">
                        <asp:RadioButton ID="RadioButton_NomComplet" runat="server" Text="Nom Complet" 
                            GroupName="Stagiaire" />
                        <asp:RadioButton ID="RadioButton_Code" runat="server" Text="Code" 
                            GroupName="Stagiaire" />
                    </td>
                </tr>
                <tr>
                    <td class="style7" align="center">
                        <asp:TextBox ID="TextBox_Recherche" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style10">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style13" align="center">
                        <br />
                        <br />
                        <asp:Button ID="Button_Rechercher" runat="server" Text="Recherche" 
                            Width="140px" onclick="Button_Rechercher_Click" />
                        <asp:Button ID="Button_Actualiser" runat="server" Text="Actualiser" 
                            Width="138px" />
                        <br />
                        <br />
                        <asp:GridView ID="GridView_Stagiaire" runat="server" Width="785px" 
                            CellPadding="4" ForeColor="#333333" GridLines="None" 
                            onselectedindexchanged="GridView_Stagiaire_SelectedIndexChanged">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="Notes">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="false" 
                                            CommandName="Select" Text="Notes"></asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                            SelectCommand="SELECT * FROM [Notes] WHERE ([Stagiaire] = @Stagiaire)">
                            <SelectParameters>
                                <asp:SessionParameter Name="Stagiaire" SessionField="note" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <asp:GridView ID="GridView_NoteStagiaire" runat="server" Width="785px" 
                            AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Stagiaire,Examen" 
                            DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="Stagiaire" HeaderText="Stagiaire" ReadOnly="True" 
                                    SortExpression="Stagiaire" />
                                <asp:BoundField DataField="Examen" HeaderText="Examen" ReadOnly="True" 
                                    SortExpression="Examen" />
                                <asp:BoundField DataField="Note" HeaderText="Note" SortExpression="Note" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                    </td>
                </tr>
                </table>
</asp:Content>
