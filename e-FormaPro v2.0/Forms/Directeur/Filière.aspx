<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Filière.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Filière" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 35%;
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
                <asp:Label ID="Label1" runat="server" Text="La filière:"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                <br />
                <asp:TextBox ID="TextBox_Filiere" runat="server"></asp:TextBox>
                <br />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Libéllé:"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox_Libelle" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
           
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Formation:"></asp:Label>
                <br />
            </td>
            <td>
                <br />
                <asp:DropDownList ID="DropDownList_Formation" runat="server" Height="25px" Width="150px" DataSourceID="SqlDataSource_Formation" DataTextField="Nom" DataValueField="id_Formation">
                </asp:DropDownList>
                <br />
                <br />
            </td>
           
        </tr>
         <tr>
            <td colspan = "3" align="center">
                <br />
                <br />
                <asp:Button ID="_Ajouter" runat="server" Text="Ajouter" Width="163px" class="btn btn-primary" OnClick="_Ajouter_Click" />
                <br />
                <br />
                <asp:GridView ID="GridView_Filiere" runat="server" CellPadding="4" 
                    ForeColor="#333333" GridLines="None" Width="768px" AutoGenerateColumns="False" DataKeyNames="id_Filiere" DataSourceID="SqlDataSource_Filieres">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="id_Filiere" HeaderText="id_Filiere" InsertVisible="False" ReadOnly="True" SortExpression="id_Filiere" />
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Libelle" HeaderText="Libelle" SortExpression="Libelle" />
                        <asp:BoundField DataField="Formation" HeaderText="Formation" SortExpression="Formation" />
                        <asp:TemplateField HeaderText="Modification">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Modification" runat="server" CommandName="Edit" ImageUrl="~/img/Directeur/editProperty_20px.png" />
                            </ItemTemplate>
                             <EditItemTemplate>
                                <asp:ImageButton ImageUrl ="~/img/Directeur/save_20px.png" runat="server" CommandName="Update" ToolTip ="Update" />
                                <asp:ImageButton ImageUrl ="~/img/Directeur/CloseWindow_20px.png" runat="server" CommandName="Cancel" ToolTip ="Cancel" />
                            </EditItemTemplate>
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
                <asp:SqlDataSource ID="SqlDataSource_Formation" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT * FROM [Formations]"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource_Filieres" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" DeleteCommand="DELETE FROM [Filieres] WHERE [id_Filiere] = @id_Filiere" InsertCommand="INSERT INTO [Filieres] ([Nom], [Libelle], [Formation]) VALUES (@Nom, @Libelle, @Formation)" SelectCommand="SELECT * FROM [Filieres]" UpdateCommand="UPDATE [Filieres] SET [Nom] = @Nom, [Libelle] = @Libelle, [Formation] = @Formation WHERE [id_Filiere] = @id_Filiere" ProviderName="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString.ProviderName %>">
                    <DeleteParameters>
                        <asp:Parameter Name="id_Filiere" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Nom" Type="String" />
                        <asp:Parameter Name="Libelle" Type="String" />
                        <asp:Parameter Name="Formation" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Nom" Type="String" />
                        <asp:Parameter Name="Libelle" Type="String" />
                        <asp:Parameter Name="Formation" Type="Int32" />
                        <asp:Parameter Name="id_Filiere" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
             </td>
           
           
        </tr>
         </table>

</asp:Content>
