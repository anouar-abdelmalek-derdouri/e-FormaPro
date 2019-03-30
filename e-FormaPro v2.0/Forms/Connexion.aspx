<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Connexion.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Connexion" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>e-FormaPro</title>
    <link href="../css/global.css" rel="stylesheet" type="text/css" />
    <link href="../css/connexion.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div id="main">
        <table>
            <thead>
                <tr>
                    <td colspan="2">
                        <h1>
                            e-FormaPro</h1>
                    </td>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        Login
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_Login" runat="server" Width="338px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        Mot de passe
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_MotDePasse" runat="server" Width="338px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
            </tbody>
            <tfoot>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button_SeConnecter" runat="server" Text="Se connecter" 
                            Width="211px" onclick="Button_SeConnecter_Click" />
                    </td>
                </tr>
            </tfoot>
        </table>
    </div>
    </form>
</body>
</html>
