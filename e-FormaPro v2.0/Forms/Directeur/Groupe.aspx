<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Groupe.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Groupe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 88px;
            height: 70px;
        }
        .auto-style2 {
            width: 35%;
            height: 70px;
        }
        .auto-style3 {
            height: 70px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">


 

      <table class="nav-justified">
                    <tr>
                        <td class="auto-style2">
                            </td>
                        <td class="auto-style1">
                            <br />
                            <br />
                <asp:Label ID="Label1" runat="server" Text="Groupe:"></asp:Label>
                            <br />
                        </td>
                        <td class="auto-style3">
                            <br />
                            <br />
                <asp:DropDownList ID="DropDownList_Groupe" runat="server" Height="30px" Width="155px" 
                                DataSourceID="SqlDataSource1" DataTextField="Nom" DataValueField="Id_Groupes">
                </asp:DropDownList>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                                SelectCommand="SELECT * FROM [Groupes]"></asp:SqlDataSource>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="3">
                            <br />
                <asp:Button ID="Button_Rechercher" runat="server" Text="Rechercher" 
                    Width="184px" class="btn btn-primary"/>
                            <br />
                            <br />
                <asp:GridView ID="GridView_Groupe" runat="server" Width="431px" AutoGenerateColumns="False" 
                                CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" 
                                GridLines="None">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="CIN" HeaderText="CIN" SortExpression="CIN" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Prenom" HeaderText="Prenom" 
                            SortExpression="Prenom" />
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
                            <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                                SelectCommand="SELECT [CIN], [Nom], [Prenom] FROM [Stagiaires] WHERE ([Groupe] = @Groupe)">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="DropDownList_Groupe" Name="Groupe" 
                                        PropertyName="SelectedValue" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                        </td>
                    </tr>
                </table>
    
</asp:Content>
