<%@ Page Title="Demandes d'appartenance" Language="C#" MasterPageFile="~/Forms/Club/Site1.Master"
    AutoEventWireup="false" CodeBehind="~/Forms/Club/Demandes.aspx.cs" Inherits="Projet.Demandes" %>

<asp:Content ID="HeaderContentDemandes" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContentDemandes" runat="server" ContentPlaceHolderID="MainContent">
   
    <h2>
        publications postées</h2>
    <br />
    <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:ButtonField ImageUrl="~/Forms/Formateur/Icon_club/verified_account_48px.png" Text="Valider" />
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <h2>
        integrations postées</h2>
    <br />
    <asp:GridView ID="GridView2" runat="server" BackColor="LightGoldenrodYellow" BorderColor="Tan"
        BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <Columns>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="40px" ImageUrl="~/img/Icon_club/verified_account_48px.png" OnClick="ImageButton1_Click1" Width="47px" />
                    <asp:ImageButton ID="ImageButton2" runat="server" Height="38px" ImageUrl="~/img/Icon_club/deleted_message_48px.png" OnClick="ImageButton2_Click1" Width="56px" />
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Matricule" SortExpression="Matricule">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Matricule") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("Matricule") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Nom" SortExpression="Nom">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Nom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Prenom" SortExpression="Prenom">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Prenom") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Prenom") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Telephone" SortExpression="Telephone">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Telephone") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("Telephone") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Email" SortExpression="Email">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label5" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Club" SortExpression="Club">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Club") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label6" runat="server" Text='<%# Bind("Club") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="IdDA" SortExpression="IdDA">
                <EditItemTemplate>
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("IdDA") %>'></asp:TextBox>
                </EditItemTemplate>
                <ItemTemplate>
                    <asp:Label ID="Label7" runat="server" Text='<%# Bind("IdDA") %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="Tan" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClubConnectionString %>" SelectCommand="SELECT * FROM [DMA] WHERE ([Club] = @Club)">
        <SelectParameters>
            <asp:QueryStringParameter Name="Club" QueryStringField="Club" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
