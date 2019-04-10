<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="InfosPerson.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Stagiaire.stage_Pr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <style type="text/css">
        .style1
        {
            width: 383px;
        }
    </style>

    <div style="text-align: center">
    
        <br />
        Forme Stagiaire : Boutton&nbsp;Consulte les infos personnelle<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Numero1 : "></asp:Label>
        <asp:TextBox ID="TextBox1_Numero" runat="server">Erreur</asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Nom : "></asp:Label>
        <asp:TextBox ID="TextBox1_Nom" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Prénom : "></asp:Label>
        <asp:TextBox ID="TextBox1_Prenom" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Téléphone : "></asp:Label>
        <asp:TextBox ID="TextBox1_Telephone" runat="server"></asp:TextBox>
        <br />
        <asp:Label ID="Label5" runat="server" Text="Email  : "></asp:Label>
        <asp:TextBox ID="TextBox1_Email" runat="server"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;<br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    Erreur</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="style1">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
        <br />
        <asp:Button ID="Button_Enregestre" runat="server" Text="Enregestre" 
            Width="232px" />
        <br />
    
    </div>
    </asp:Content>
