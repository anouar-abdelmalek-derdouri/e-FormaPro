<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Affectation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Affectation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 80px;
        }
        .style2
        {
            height: 38px;
        }
        .style3
        {
            height: 105px;
        }
        .style6
        {
            height: 24px;
        }
        .style7
        {
            height: 32px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%; height: 630px;">
        <tr>
            <td align="center" class="style7">
                <br />
                <asp:Label ID="Label1" runat="server" Text="Formateur:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="22px" 
                    Width="175px" DataSourceID="SqlDataSource1" DataTextField="Nom" 
                    DataValueField="Matricule">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Formateurs]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="style6">
                <asp:Label ID="Label2" runat="server" Text="Groupe:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList_Groupe" runat="server" Height="22px" 
                    Width="175px" DataSourceID="SqlDataSource2" DataTextField="Nom" 
                    DataValueField="Id_Groupes">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Groupes]"></asp:SqlDataSource>
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1">
                <asp:Label ID="Label3" runat="server" Text="Module:"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList_Module" runat="server" Height="27px" 
                    Width="175px" DataSourceID="SqlDataSource3" DataTextField="Nom" 
                    DataValueField="Id_Module">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Modules]"></asp:SqlDataSource>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Semester :"></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList_sem" runat="server" Height="25px" 
                    Width="175px" DataSourceID="SqlDataSource5" DataTextField="Nom" 
                    DataValueField="Id_Semestre">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                    SelectCommand="SELECT * FROM [Semestres]"></asp:SqlDataSource>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" align="center">
                <asp:Button ID="_Ajouter" class="btn btn-primary" runat="server" Text="Ajouter" 
                    onclick="_Ajouter_Click"  />
                <br />
                <br />
            </td>
          
        </tr>
        <tr>
            <td class="style3" align="center">
                <asp:GridView ID="Aff" runat="server" Width="678px" CellPadding="6" 
                    ForeColor="#333333" GridLines="None" AutoGenerateColumns="False" 
                    DataKeyNames="Id_Affectation" DataSourceID="SqlDataSource4" Height="204px" 
                    onselectedindexchanged="Aff_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:TemplateField ShowHeader="False">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" 
                                    CommandName="Delete" Text="Supprimer"></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Id_Affectation" HeaderText="Id_Affectation" 
                            InsertVisible="False" ReadOnly="True" SortExpression="Id_Affectation" />
                        <asp:BoundField DataField="Formateur" HeaderText="Formateur" 
                            SortExpression="Formateur" />
                        <asp:BoundField DataField="Groupe" HeaderText="Groupe" 
                            SortExpression="Groupe" />
                        <asp:BoundField DataField="Module" HeaderText="Module" 
                            SortExpression="Module" />
                        <asp:BoundField DataField="Semester" HeaderText="Semester" 
                            SortExpression="Semester" />
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
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" 
                    SelectCommand="SELECT * FROM [AffectationFormateursModule]" 
                    DeleteCommand="DELETE FROM [AffectationFormateursModule] WHERE [Id_Affectation] = @Id_Affectation" 
                    InsertCommand="INSERT INTO [AffectationFormateursModule] ([Formateur], [Groupe], [Module], [Semester]) VALUES (@Formateur, @Groupe, @Module, @Semester)" 
                    UpdateCommand="UPDATE [AffectationFormateursModule] SET [Formateur] = @Formateur, [Groupe] = @Groupe, [Module] = @Module, [Semester] = @Semester WHERE [Id_Affectation] = @Id_Affectation">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_Affectation" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Formateur" Type="String" />
                        <asp:Parameter Name="Groupe" Type="Int32" />
                        <asp:Parameter Name="Module" Type="Int32" />
                        <asp:Parameter Name="Semester" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Formateur" Type="String" />
                        <asp:Parameter Name="Groupe" Type="Int32" />
                        <asp:Parameter Name="Module" Type="Int32" />
                        <asp:Parameter Name="Semester" Type="Int32" />
                        <asp:Parameter Name="Id_Affectation" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
          
        </tr>
    </table>


</asp:Content>
