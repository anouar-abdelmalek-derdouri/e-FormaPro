<%@ Page Language="C#" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8" />
    <title></title>    
</head>
<body>
    <form id="form1" runat="server">   
         <h2>
        Liste des clubs :
    </h2>
       <%-- <asp:Button ID="Button_afiche" runat="server" Text="afficher"
            OnClick="Button_afiche_Click" />--%>
    
    <p>
        <asp:ListView ID="ListViewpub" runat="server" DataKeyNames="NomClub" DataSourceID="SqlDataSource1" GroupItemCount="3">
            <AlternatingItemTemplate>
                <td runat="server" style="background-color: #FFFFFF;color: #284775;">NomClub:
                    <asp:Label ID="NomClubLabel" runat="server" Text='<%# Eval("NomClub") %>' />
                    <br />
                    Sujets:
                    <asp:Label ID="SujetsLabel" runat="server" Text='<%# Eval("Sujets") %>' />
                    <br />
                    Acces:
                    <asp:Label ID="AccesLabel" runat="server" Text='<%# Eval("Acces") %>' />
                    <br />
                    Régles:
                    <asp:Label ID="RéglesLabel" runat="server" Text='<%# Eval("Régles") %>' />
                    <br />
                    Stagiaire:
                    <asp:Label ID="StagiaireLabel" runat="server" Text='<%# Eval("Stagiaire") %>' />
                    <br />
                    Formateur:
                    <asp:Label ID="FormateurLabel" runat="server" Text='<%# Eval("Formateur") %>' />
                    <br />
                </td>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <td runat="server" style="background-color: #999999;">NomClub:
                    <asp:Label ID="NomClubLabel1" runat="server" Text='<%# Eval("NomClub") %>' />
                    <br />
                    Sujets:
                    <asp:TextBox ID="SujetsTextBox" runat="server" Text='<%# Bind("Sujets") %>' />
                    <br />
                    Acces:
                    <asp:TextBox ID="AccesTextBox" runat="server" Text='<%# Bind("Acces") %>' />
                    <br />
                    Régles:
                    <asp:TextBox ID="RéglesTextBox" runat="server" Text='<%# Bind("Régles") %>' />
                    <br />
                    Stagiaire:
                    <asp:TextBox ID="StagiaireTextBox" runat="server" Text='<%# Bind("Stagiaire") %>' />
                    <br />
                    Formateur:
                    <asp:TextBox ID="FormateurTextBox" runat="server" Text='<%# Bind("Formateur") %>' />
                    <br />
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                    <br />
                </td>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>No data was returned.</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <EmptyItemTemplate>
                <td runat="server" />
            </EmptyItemTemplate>
            <GroupTemplate>
                <tr id="itemPlaceholderContainer" runat="server">
                    <td id="itemPlaceholder" runat="server"></td>
                </tr>
            </GroupTemplate>
            <InsertItemTemplate>
                <td runat="server" style="">NomClub:
                    <asp:TextBox ID="NomClubTextBox" runat="server" Text='<%# Bind("NomClub") %>' />
                    <br />
                    Sujets:
                    <asp:TextBox ID="SujetsTextBox" runat="server" Text='<%# Bind("Sujets") %>' />
                    <br />
                    Acces:
                    <asp:TextBox ID="AccesTextBox" runat="server" Text='<%# Bind("Acces") %>' />
                    <br />
                    Régles:
                    <asp:TextBox ID="RéglesTextBox" runat="server" Text='<%# Bind("Régles") %>' />
                    <br />
                    Stagiaire:
                    <asp:TextBox ID="StagiaireTextBox" runat="server" Text='<%# Bind("Stagiaire") %>' />
                    <br />
                    Formateur:
                    <asp:TextBox ID="FormateurTextBox" runat="server" Text='<%# Bind("Formateur") %>' />
                    <br />
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <br />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                    <br />
                </td>
            </InsertItemTemplate>
            <ItemTemplate>
                <td runat="server" style="background-color: #E0FFFF;color: #333333;">NomClub:
                    <asp:Label ID="NomClubLabel" runat="server" Text='<%# Eval("NomClub") %>' />
                    <br />
                    Sujets:
                    <asp:Label ID="SujetsLabel" runat="server" Text='<%# Eval("Sujets") %>' />
                    <br />
                    Acces:
                    <asp:Label ID="AccesLabel" runat="server" Text='<%# Eval("Acces") %>' />
                    <br />
                    Régles:
                    <asp:Label ID="RéglesLabel" runat="server" Text='<%# Eval("Régles") %>' />
                    <br />
                    Stagiaire:
                    <asp:Label ID="StagiaireLabel" runat="server" Text='<%# Eval("Stagiaire") %>' />
                    <br />
                    Formateur:
                    <asp:Label ID="FormateurLabel" runat="server" Text='<%# Eval("Formateur") %>' />
                    <br />
                </td>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr id="groupPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #5D7B9D;font-family: Verdana, Arial, Helvetica, sans-serif;color: #FFFFFF"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <td runat="server" style="background-color: #E2DED6;font-weight: bold;color: #333333;">NomClub:
                    <asp:Label ID="NomClubLabel" runat="server" Text='<%# Eval("NomClub") %>' />
                    <br />
                    Sujets:
                    <asp:Label ID="SujetsLabel" runat="server" Text='<%# Eval("Sujets") %>' />
                    <br />
                    Acces:
                    <asp:Label ID="AccesLabel" runat="server" Text='<%# Eval("Acces") %>' />
                    <br />
                    Régles:
                    <asp:Label ID="RéglesLabel" runat="server" Text='<%# Eval("Régles") %>' />
                    <br />
                    Stagiaire:
                    <asp:Label ID="StagiaireLabel" runat="server" Text='<%# Eval("Stagiaire") %>' />
                    <br />
                    Formateur:
                    <asp:Label ID="FormateurLabel" runat="server" Text='<%# Eval("Formateur") %>' />
                    <br />
                </td>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClubConnectionString %>" SelectCommand="SELECT * FROM [Clubs]">
        </asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
