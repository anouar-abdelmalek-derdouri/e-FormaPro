<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="ProfileDericteur.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.ProfileDericteur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style3 {
            width: 1023px;
        }

        .auto-style4 {
            height: 20px;
        }

        .auto-style5 {
            width: 118px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table class="auto-style3">
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style5"></td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="Button_Upload" runat="server" OnClick="Button1_Click" Text="Upload" />
            </td>
            <td></td>
        </tr>
        <tr>
            <td class="auto-style4">&nbsp;</td>
            <td class="auto-style5" rowspan="5">
                <asp:Image ID="imgPicture" runat="server"
                    ImageUrl="" Width="170px"
                    Height="128px" />
            </td>
            <td class="auto-style4">
                <asp:Label ID="Label_Matricule" runat="server">Matricule</asp:Label>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style4"></td>
            <td class="auto-style4">
                <asp:Label ID="Label_Nom" runat="server">Nom</asp:Label>
            </td>
            <td class="auto-style4"></td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label_Prenom" runat="server">Prenom</asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label_Email" runat="server">Email</asp:Label>
            </td>
            <td>
                <asp:Button ID="TextBox_ModifierEmail" class="btn btn-primary" runat="server" Text="Modifier Email" />
                </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="Label_Prenom_MotPass" runat="server">Mot de passe</asp:Label>
            </td>
            <td>
                <asp:Button ID="TextBox_ModifierMotPasse" class="btn btn-primary" runat="server" Text="Modifier Mot Passe" Width="153px" />
                </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
