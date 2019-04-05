<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Listes Des Stagiaires.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Listes_Des_Stagiaires" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <table style="width:101%; height: 457px;">
            <tr>
                
                <td align="center" class="style1">
                    <asp:Label ID="Label1" runat="server" BorderColor="#336699" 
                        BorderStyle="Groove" Font-Bold="True" Font-Names="Arial Black" 
                        Font-Size="Larger" Text="Liste des stagiaires" Width="703px" 
                        ForeColor="#00CC99"></asp:Label>
                </td>
                
            </tr>
            <tr>
               
                <td align="center" class="style1">
                <br/>
                    <asp:FileUpload ID="FileUpload1" runat="server" BorderColor="#CCCCCC" 
                        BorderStyle="None" Width="219px" />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" BorderColor="Aqua" BorderStyle="Groove" 
                        Font-Bold="True" ForeColor="#336699" Text="Importer" Width="110px" 
                        Height="21px" style="margin-left: 0px" />
                  
                </td>
                
            </tr>
            <tr>
                <td class="style1" align="center">
                <br/>
                    <asp:ListView ID="ListView1" runat="server" 
                        DataSourceID="SqlDataSource1" style="margin-left: 0px">
                        <AlternatingItemTemplate>
                            <tr style="background-color: #FFFFFF;color: #284775;">
                                <td>
                                    <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PrenomLabel" runat="server" Text='<%# Eval("Prenom") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CINLabel" runat="server" Text='<%# Eval("CIN") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="GroupeLabel" runat="server" 
                                        Text='<%# Eval("Groupe") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' />
                                </td>
                            </tr>
                        </AlternatingItemTemplate>
                        <EditItemTemplate>
                            <tr style="background-color: #999999;">
                                <td>
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" 
                                        Text="Update" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Cancel" />
                                </td>
                                <td>
                                    <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PrenomTextBox" runat="server" Text='<%# Bind("Prenom") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CINTextBox" runat="server" Text='<%# Bind("CIN") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TelephoneTextBox" runat="server" 
                                        Text='<%# Bind("Telephone") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="GroupeTextBox" runat="server" 
                                        Text='<%# Bind("Groupe") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AdresseTextBox" runat="server" 
                                        Text='<%# Bind("Adresse") %>' />
                                </td>
                            </tr>
                        </EditItemTemplate>
                        <EmptyDataTemplate>
                            <table id="Table1" runat="server" 
                                style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                                <tr>
                                    <td>
                                        No data was returned.</td>
                                </tr>
                            </table>
                        </EmptyDataTemplate>
                        <InsertItemTemplate>
                            <tr style="">
                                <td>
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" 
                                        Text="Insert" />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" 
                                        Text="Clear" />
                                </td>
                                <td>
                                    <asp:TextBox ID="NomTextBox" runat="server" Text='<%# Bind("Nom") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="PrenomTextBox" runat="server" Text='<%# Bind("Prenom") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="CINTextBox" runat="server" Text='<%# Bind("CIN") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="TelephoneTextBox" runat="server" 
                                        Text='<%# Bind("Telephone") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="GroupeTextBox" runat="server" 
                                        Text='<%# Bind("Groupe") %>' />
                                </td>
                                <td>
                                    <asp:TextBox ID="AdresseTextBox" runat="server" 
                                        Text='<%# Bind("Adresse") %>' />
                                </td>
                            </tr>
                        </InsertItemTemplate>
                        <ItemTemplate>
                            <tr style="background-color: #E0FFFF;color: #333333;">
                                <td>
                                    <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PrenomLabel" runat="server" Text='<%# Eval("Prenom") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CINLabel" runat="server" Text='<%# Eval("CIN") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="GroupeLabel" runat="server" 
                                        Text='<%# Eval("Groupe") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' />
                                </td>
                            </tr>
                        </ItemTemplate>
                        <LayoutTemplate>
                            <table id="Table2" runat="server">
                                <tr id="Tr1" runat="server">
                                    <td id="Td1" runat="server">
                                        <table ID="itemPlaceholderContainer" runat="server" border="1" 
                                            style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                            <tr id="Tr2" runat="server" style="background-color: #E0FFFF;color: #333333;">
                                                <th id="Th1" runat="server">
                                                    Nom</th>
                                                <th id="Th2" runat="server">
                                                    Prenom</th>
                                                <th id="Th3" runat="server">
                                                    CIN</th>
                                                <th id="Th4" runat="server">
                                                    Email</th>
                                                <th id="Th5" runat="server">
                                                    Telephone</th>
                                                <th id="Th6" runat="server">
                                                    Groupe</th>
                                                <th id="Th7" runat="server">
                                                    Adresse</th>
                                            </tr>
                                            <tr ID="itemPlaceholder" runat="server">
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr id="Tr3" runat="server">
                                    <td id="Td2" runat="server" 
                                        style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF">
                                        <asp:DataPager ID="DataPager1" runat="server">
                                            <Fields>
                                                <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" 
                                                    ShowLastPageButton="True" />
                                            </Fields>
                                        </asp:DataPager>
                                    </td>
                                </tr>
                            </table>
                        </LayoutTemplate>
                        <SelectedItemTemplate>
                            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                                <td>
                                    <asp:Label ID="NomLabel" runat="server" Text='<%# Eval("Nom") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="PrenomLabel" runat="server" Text='<%# Eval("Prenom") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="CINLabel" runat="server" Text='<%# Eval("CIN") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="GroupeLabel" runat="server" 
                                        Text='<%# Eval("Groupe") %>' />
                                </td>
                                <td>
                                    <asp:Label ID="AdresseLabel" runat="server" Text='<%# Eval("Adresse") %>' />
                                </td>
                            </tr>
                        </SelectedItemTemplate>
                    </asp:ListView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                        
                        SelectCommand="SELECT [Nom], [Prenom], [CIN], [Email], [Telephone], [Groupe], [Adresse] FROM [Stagiaires]">
                    </asp:SqlDataSource>
                </td>
                
            </tr>
              
        </table>
</asp:Content>
