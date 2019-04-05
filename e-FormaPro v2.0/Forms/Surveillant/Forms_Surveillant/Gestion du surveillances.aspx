<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Gestion du surveillances.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Gestion_du_surveillances" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:139%;">
        <tr>
            <td colspan="3" align="center">
                <asp:Label ID="Label1" runat="server" BorderStyle="Groove" Font-Bold="True" 
                    Font-Names="Californian FB" Font-Size="Larger" Text="Gestion des surveillances" 
                    Width="514px"></asp:Label>
            </td>
            
        </tr>
          <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td colspan="3" align="center">
               <br />
                <asp:Label ID="Label3" runat="server" Text="Examen :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>Passage</asp:ListItem>
                    <asp:ListItem>EFM Régional</asp:ListItem>
                    <asp:ListItem>Councours</asp:ListItem>
                </asp:DropDownList></td>
            
        </tr>
          <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label2" runat="server" Text="Groupe :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="71px">
                    <asp:ListItem>Gr01</asp:ListItem>
                    <asp:ListItem>Gr02</asp:ListItem>
                    <asp:ListItem>Gr03</asp:ListItem>
                    <asp:ListItem>Gr04</asp:ListItem>
                </asp:DropDownList></td>
            <td class="style5" align="center">
               <asp:Label ID="Label4" runat="server" Text="Filiére :"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList3" runat="server" Height="17px" Width="58px">
                    <asp:ListItem>TDI</asp:ListItem>
                    <asp:ListItem>TRI</asp:ListItem>
                </asp:DropDownList>
&nbsp;&nbsp;
               
&nbsp;</td>
        </tr>
          <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
         <tr>
            <td align="center">
                <asp:Label ID="Label5" runat="server" Text="Modules :"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:DropDownList ID="DropDownList4" runat="server" Height="16px" Width="119px">
                    <asp:ListItem>Métier et formation</asp:ListItem>
                    <asp:ListItem> Programmation Client-serveur</asp:ListItem>
                    <asp:ListItem>Programmation orientée objet</asp:ListItem>
                </asp:DropDownList></td>
                <td align="center">
                 <asp:Label ID="Label6" runat="server" Text="Niveau scolaire :"></asp:Label>
&nbsp;
                <asp:DropDownList ID="DropDownList5" runat="server">
                    <asp:ListItem>Première année</asp:ListItem>
                    <asp:ListItem>Deuxième année</asp:ListItem>
                </asp:DropDownList>
            </td>

           
        </tr>
          <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
         <tr>
            <td colspan="3" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" 
                    CellPadding="3" DataSourceID="SqlDataSource1" ForeColor="Black" 
                    GridLines="Vertical" Width="600px" Height="181px">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                        <asp:BoundField DataField="Nom" HeaderText="Nom" SortExpression="Nom" />
                        <asp:BoundField DataField="Prenom" HeaderText="Prenom" 
                            SortExpression="Prenom" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                        <asp:BoundField DataField="Type_Formateur" HeaderText="Type du Formateur" 
                            SortExpression="Type_Formateur" />
                        <asp:TemplateField HeaderText="Affectation" SortExpression="Nom">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Nom") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:CheckBox ID="CheckBox1" runat="server" />
                            </ItemTemplate>
                            <ItemStyle HorizontalAlign="Center" />
                        </asp:TemplateField>
                    </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                    SelectCommand="SELECT [Nom], [Prenom], [Email], [Type_Formateur] FROM [Formateurs]">
                </asp:SqlDataSource>
             </td>
        </tr>
         <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
         <tr>
            <td colspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="Black" BorderStyle="Outset" 
                    Font-Bold="True" ForeColor="White" style="margin-left: 10px" Text="Affecter" 
                    Width="97px" />
&nbsp; </td>
        </tr>
    </table>
</asp:Content>
