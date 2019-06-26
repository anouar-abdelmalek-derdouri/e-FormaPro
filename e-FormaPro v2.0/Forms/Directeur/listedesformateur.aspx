<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="listedesformateur.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="9" DataKeyNames="Matricule" DataSourceID="SqlDataSource1" 
        ForeColor="#333333" GridLines="None" 
        onselectedindexchanged="GridView1_SelectedIndexChanged1" 
        AllowPaging="True" CellSpacing="9">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <EditItemTemplate>
                    <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="True" 
                        CommandName="Update" onclick="LinkButton6_Click3" Text="Mettre à jour"></asp:LinkButton>
                    &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Cancel" onclick="LinkButton2_Click" Text="Annuler"></asp:LinkButton>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Modifier"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton11" runat="server" CausesValidation="False" 
                        CommandName="Select" onclick="LinkButton11_Click2" Text="Supprime"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="Matricule" HeaderText="Matricule" ReadOnly="True" 
                SortExpression="Matricule" />
            <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
            <asp:BoundField DataField="Prenom" HeaderText="Prenom" 
                SortExpression="Prenom" />
            <asp:BoundField DataField="DatEmbauche" HeaderText="DatEmbauche" 
                SortExpression="DatEmbauche" />
            <asp:BoundField DataField="Type_Formateur" HeaderText="Type_Formateur" 
                SortExpression="Type_Formateur" />
            <asp:BoundField DataField="DateNaissance" HeaderText="DateNaissance" 
                SortExpression="DateNaissance" />
            <asp:BoundField DataField="Telephone" HeaderText="Telephone" 
                SortExpression="Telephone" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:BoundField DataField="MotDePasse" HeaderText="MotDePasse" 
                SortExpression="MotDePasse" />
            <asp:BoundField DataField="Addresse" HeaderText="Addresse" 
                SortExpression="Addresse" />
            <asp:BoundField DataField="Filiere" HeaderText="Filiere" 
                SortExpression="Filiere" />
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
        DeleteCommand="DELETE FROM [Formateurs] WHERE [Matricule] = @Matricule" 
        InsertCommand="INSERT INTO [Formateurs] ([Matricule], [Nom], [Prenom], [DatEmbauche], [Type_Formateur], [DateNaissance], [Telephone], [Email], [MotDePasse], [Addresse], [Filiere]) VALUES (@Matricule, @Nom, @Prenom, @DatEmbauche, @Type_Formateur, @DateNaissance, @Telephone, @Email, @MotDePasse, @Addresse, @Filiere)" 
        SelectCommand="SELECT * FROM [Formateurs]" 
        UpdateCommand="UPDATE [Formateurs] SET [Nom] = @Nom, [Prenom] = @Prenom, [DatEmbauche] = @DatEmbauche, [Type_Formateur] = @Type_Formateur, [DateNaissance] = @DateNaissance, [Telephone] = @Telephone, [Email] = @Email, [MotDePasse] = @MotDePasse, [Addresse] = @Addresse, [Filiere] = @Filiere WHERE [Matricule] = @Matricule">
        <DeleteParameters>
            <asp:Parameter Name="Matricule" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Matricule" Type="String" />
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Prenom" Type="String" />
            <asp:Parameter DbType="Date" Name="DatEmbauche" />
            <asp:Parameter Name="Type_Formateur" Type="String" />
            <asp:Parameter DbType="Date" Name="DateNaissance" />
            <asp:Parameter Name="Telephone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MotDePasse" Type="String" />
            <asp:Parameter Name="Addresse" Type="String" />
            <asp:Parameter Name="Filiere" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Nom" Type="String" />
            <asp:Parameter Name="Prenom" Type="String" />
            <asp:Parameter DbType="Date" Name="DatEmbauche" />
            <asp:Parameter Name="Type_Formateur" Type="String" />
            <asp:Parameter DbType="Date" Name="DateNaissance" />
            <asp:Parameter Name="Telephone" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MotDePasse" Type="String" />
            <asp:Parameter Name="Addresse" Type="String" />
            <asp:Parameter Name="Filiere" Type="Int32" />
            <asp:Parameter Name="Matricule" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
