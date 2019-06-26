<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Jour Feries.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Jour_Feries" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 41px;
        }
        .auto-style2 {
            height: 41px;
            width: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

      <table style="width:100%;">
        <tr>
            <td class="auto-style2">
                </td>
         
            <td class="auto-style1">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Date du premier jour:"></asp:Label>
                <br />
                Date du dernier jour:</td>
         
            <td class="auto-style1">
                <br />
                <br />
                <asp:TextBox ID="TextBox_Date" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox_Date" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />
                <asp:TextBox ID="TextBox_DateFin" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox_DateFin" ErrorMessage="*" ForeColor="Red"></asp:RegularExpressionValidator>
            </td>
         
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;</td>
           
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="La fête:"></asp:Label>
                <br />
                Nombre de jours:</td>
           
            <td class="auto-style1">
                <asp:TextBox ID="TextBox_Fete" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox_Fete" ErrorMessage="*" ForeColor="Red"></asp:RegularExpressionValidator>
                <br />
                <asp:TextBox ID="TextBox_NbrJour" runat="server"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox_NbrJour" ErrorMessage="*" ForeColor="Red"></asp:RegularExpressionValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox_NbrJour" ErrorMessage="Please insert a valid number greater than 0" ForeColor="Red" Operator="GreaterThan" Type="Integer" ValueToCompare="0"></asp:CompareValidator>
            </td>
           
        </tr>
        <tr>
            <td align="center" colspan="3">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="173px" class="btn btn-primary" OnClick="Button_Ajouter_Click"/>
                <asp:GridView ID="GridView_JourFeries" runat="server" AutoGenerateColumns="False" DataKeyNames="id_JoursFeries" DataSourceID="SqlDataSource_Jours">
                    <Columns>
                        <asp:BoundField DataField="id_JoursFeries" HeaderText="id_JoursFeries" InsertVisible="False" ReadOnly="True" SortExpression="id_JoursFeries" />
                        <asp:BoundField DataField="DateD" HeaderText="DateD" SortExpression="DateD" />
                        <asp:BoundField DataField="DateF" HeaderText="DateF" SortExpression="DateF" />
                        <asp:BoundField DataField="Fete" HeaderText="Fete" SortExpression="Fete" />
                        <asp:BoundField DataField="NbrJour" HeaderText="NbrJour" SortExpression="NbrJour" />

                        <asp:TemplateField HeaderText="Modification">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Modification" runat="server" CommandName="Edit" ImageUrl="~/img/Directeur/editProperty_20px.png" OnClick="ImageButton_Modification_Click" />
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
                <asp:SqlDataSource ID="SqlDataSource_Jours" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString %>" DeleteCommand="DELETE FROM [JoursFeries] WHERE [id_JoursFeries] = @id_JoursFeries" InsertCommand="INSERT INTO [JoursFeries] ([DateD], [DateF], [Fete], [NbrJour]) VALUES (@DateD, @DateF, @Fete, @NbrJour)" SelectCommand="SELECT * FROM [JoursFeries]" UpdateCommand="UPDATE [JoursFeries] SET [DateD] = @DateD, [DateF] = @DateF, [Fete] = @Fete, [NbrJour] = @NbrJour WHERE [id_JoursFeries] = @id_JoursFeries">
                    <DeleteParameters>
                        <asp:Parameter Name="id_JoursFeries" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter DbType="Date" Name="DateD" />
                        <asp:Parameter DbType="Date" Name="DateF" />
                        <asp:Parameter Name="Fete" Type="String" />
                        <asp:Parameter Name="NbrJour" Type="Int32" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter DbType="Date" Name="DateD" />
                        <asp:Parameter DbType="Date" Name="DateF" />
                        <asp:Parameter Name="Fete" Type="String" />
                        <asp:Parameter Name="NbrJour" Type="Int32" />
                        <asp:Parameter Name="id_JoursFeries" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
           
        </tr>
        </table>
</asp:Content>
