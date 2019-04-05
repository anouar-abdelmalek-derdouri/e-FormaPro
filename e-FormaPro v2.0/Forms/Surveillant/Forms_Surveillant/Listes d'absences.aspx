<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Listes d'absences.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Listes_d_absences" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:141%;">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" BorderStyle="Double" Font-Bold="True" 
                        Font-Size="Larger" Text="Listes d'absences" Width="702px"></asp:Label>
                    <br /></td>
            
        </tr>
        <tr>
       
            <td colspan="3"class="style5" align="center">
             <br />
                <asp:Label ID="Label3" runat="server" Text="Groupe :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Gr01</asp:ListItem>
                    <asp:ListItem>Gr02</asp:ListItem>
                    <asp:ListItem>Gr03</asp:ListItem>
                    <asp:ListItem>Gr04</asp:ListItem>
                </asp:DropDownList>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="Filiére :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server">
                    <asp:ListItem>TDI</asp:ListItem>
                    <asp:ListItem>TRI</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
                <br />
                <br />
&nbsp;
                <asp:Label ID="Label5" runat="server" Text="Niveau scolaire :"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server">
                    <asp:ListItem>Première année</asp:ListItem>
                    <asp:ListItem>Deuxième année</asp:ListItem>
                </asp:DropDownList>
            </td>
            
        </tr>
        <tr>
            <td colspan="3" align="center">
            <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
                        CellPadding="4" DataSourceID="SqlDataSource4" ForeColor="Black" 
                        GridLines="Horizontal" Height="250px" Width="720px">
                        <Columns>
                            <asp:BoundField DataField="Nom_Complet" HeaderText="Nom complet" 
                                ReadOnly="True" SortExpression="Nom_Complet" />
                            <asp:BoundField DataField="Filiere" HeaderText="Filiere" 
                                SortExpression="Filiere" />
                            <asp:BoundField DataField="Niveaux_Scolaire" HeaderText="Niveaux scolaire" 
                                SortExpression="Niveaux_Scolaire" />
                            <asp:BoundField DataField="Groupe" HeaderText="Groupe" 
                                SortExpression="Groupe" />
                            <asp:TemplateField HeaderText="Etat" SortExpression="Nom_Complet">
                                <EditItemTemplate>
                                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom_Complet") %>'></asp:TextBox>
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="202px">
                                        <asp:ListItem>Justifiée</asp:ListItem>
                                        <asp:ListItem>Non justifiée</asp:ListItem>
                                    </asp:DropDownList>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource4" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                        SelectCommand="SELECT [Nom Complet] AS Nom_Complet, [Filiere], [Niveaux Scolaire] AS Niveaux_Scolaire, [Groupe] FROM [V_candidatstest]">
                    </asp:SqlDataSource>
                    <br /></td>
          
        </tr>
         <tr>
            <td colspan="3" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#333333" 
                    BorderStyle="Groove" style="margin-left: 0px" Text="Infos du stagiaire" 
                    Width="112px" PostBackUrl="infosD'absenceDuStagiaires.aspx" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#333333" 
                    BorderStyle="Groove" style="margin-left: 28px" Text="Envoyer" Width="101px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
          
        </tr>
    </table>
</asp:Content>
