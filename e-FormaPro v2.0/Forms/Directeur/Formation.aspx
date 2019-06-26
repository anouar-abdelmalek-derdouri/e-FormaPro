<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Formation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Formation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 35%;
        }
        .auto-style2 {
            width: 35%;
            height: 82px;
        }
        .auto-style3 {
            height: 82px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
     <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="La formation:"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                <br />
                <asp:TextBox ID="TextBox_Formation" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                </td>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label2" runat="server" Text="L'abréviation:"></asp:Label>
            </td>
            <td class="auto-style3">
                <br />
                <br />
                <asp:TextBox ID="TextBox_Abreviation" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td colspan = "3" align="center">
                <br />
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="163px" class="btn btn-primary" OnClick="Button_Ajouter_Click"/>
                <br />
                <asp:GridView ID="GridView_Formation" runat="server" Width="770px" Height="141px" AutoGenerateColumns="False" DataKeyNames="id_Formation" DataSourceID="SqlDataSource_Formations" OnRowDataBound="GridView_Formation_RowDataBound" OnRowDeleting="GridView_Formation_RowDeleting">
                    <Columns>
                        <asp:BoundField DataField="id_Formation" HeaderText="id_Formation" InsertVisible="False" ReadOnly="True" SortExpression="id_Formation" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Abreviation" HeaderText="Abreviation" SortExpression="Abreviation" />
                        <asp:TemplateField HeaderText="Modification">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Modification" runat="server" CommandName="Edit" ImageUrl="~/img/Directeur/editProperty_20px.png" ToolTip="Edit" />
                            </ItemTemplate>
                            
                            <EditItemTemplate>
                                <asp:ImageButton ImageUrl ="~/img/Directeur/save_20px.png" runat="server" CommandName="Update" ToolTip ="Update" />
                                <asp:ImageButton ImageUrl ="~/img/Directeur/CloseWindow_20px.png" runat="server" CommandName="Cancel" ToolTip ="Cancel" />
                            </EditItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Suppression">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Suppression" runat="server" OnClientClick="return confirm('Voulez vous vraiment supprimer?')" CommandName="Delete" ImageUrl="~/img/Directeur/trash_20px.png" OnClick="ImageButton_Suppression_Click" />
                            </ItemTemplate>

                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource_Formations" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" DeleteCommand="DELETE FROM [Formations] WHERE [id_Formation] = @id_Formation" InsertCommand="INSERT INTO [Formations] ([Nom], [Abreviation]) VALUES (@Nom, @Abreviation)" SelectCommand="SELECT * FROM [Formations]" UpdateCommand="UPDATE [Formations] SET [Nom] = @Nom, [Abreviation] = @Abreviation WHERE [id_Formation] = @id_Formation">
                    <DeleteParameters>
                        <asp:Parameter Name="id_Formation" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nom" Type="String" />
                        <asp:Parameter Name="Abreviation" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nom" Type="String" />
                        <asp:Parameter Name="Abreviation" Type="String" />
                        <asp:Parameter Name="id_Formation" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
           
        </tr>
        </table>
</asp:Content>
