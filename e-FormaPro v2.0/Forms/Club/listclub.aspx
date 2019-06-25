<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="listclub.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Club.listclub" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Clubs</title>
    
    <style type="text/css">
        .auto-style3 {
            width: 102%;
        }
        .auto-style4 {
            height: 29px;
            width: 247px;
            text-align: center;
        }
        .auto-style5 {
            height: 59px;
            width: 247px;
            text-align: center;
        }
        .auto-style6 {
            height: 68px;
            width: 247px;
            text-align: center;
        }
        .auto-style8 {
            width: 247px;
            text-align: center;
        }
        .auto-style9 {
            width: 247px;
            text-align: center;
            height: 31px;
        }
    </style>
    
</head>
<body runat ="server">
    <form id="form1" runat="server">
        
            <h2>bienvenue au espase club</h2>
            <h3>La list des Clubs</h3>
        
            <p>
                <asp:DataList ID="DataList_club" runat="server" DataSourceID="SqlDataSource_clublist" HorizontalAlign="Center" RepeatColumns="4" RepeatDirection="Horizontal" OnItemCommand="DataList_club_ItemCommand">
                    <ItemTemplate>
                        <table align="center" class="auto-style3" border="0" style="background-color: #E1E1E1">
                            <tr>
                                <td class="auto-style5" style="background-color: #006064; font-family: 'Arial Black'; color: #FFFFFF; font-size: large">
                                    <asp:Label ID="NomClubLabel" runat="server" Text='<%# Eval("NomClub") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style4">
                                    <asp:Label ID="SujetsLabel" runat="server" Text='<%# Eval("Sujets") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style6">
                                    <asp:Label ID="RéglesLabel" runat="server" Text='<%# Eval("Régles") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style9">
                                    <asp:Label ID="PrésidentLabel" runat="server" Text='<%# Eval("Président") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style8" style="width: auto; height: auto; top: auto; right: auto; bottom: auto; left: auto; clip: rect(auto, auto, auto, auto)">
                                    <asp:ImageButton ID="ImageButton_view" runat="server" ImageUrl="~/img/Icon_club/visible_40px.png" OnClick="ImageButton_view_Click" CommandArgument='<%# Eval("NomClub") %>' CommandName="view" />
                                    
                                    &nbsp;&nbsp;&nbsp;
                                    
                                    <asp:ImageButton ID="ImageButton_send_DM" runat="server" ImageUrl="~/img/Icon_club/send_40px.png" />
                                    <br />
                                    <br />
                                    <asp:Label ID="Label_erreur" runat="server" ForeColor="Red" Text="Vous éte pas un member dans le club.  (click sur envoyer demande pour envoyer une demande d'integration)" Visible="False"></asp:Label>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </p>

            <br />
            <asp:SqlDataSource ID="SqlDataSource_clublist" runat="server" ConnectionString="<%$ ConnectionStrings:ClubConnectionString %>" SelectCommand="SELECT [NomClub], [Sujets], [Régles], [Président] FROM [Club]"></asp:SqlDataSource>

    </form>
</body>
</html>
