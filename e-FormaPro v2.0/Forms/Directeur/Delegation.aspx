<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Delegation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Delegation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        
        .auto-style3 {
            height: 22px;
        }

        .auto-style9 {
            height: 22px;
            width: 100px;
        }
        .auto-style10 {
            height: 26px;
            width: 20%;
        }
        .auto-style11 {
            width: 100px
        }
        .auto-style12 {
            height: 26px;
        }
        .auto-style13 {
            width: 415px;
        }
        .auto-style14 {
            height: 26px;
            width: 440px;
        }
        .auto-style15 {
            width: 440px;
            height: 25px;
        }
        .auto-style16 {
            height: 25px;
        }
        .auto-style17 {
            width: 440px;
            height: 45px;
        }
        .auto-style18 {
            height: 45px;
        }
        .auto-style19 {
            width: 189px
        }
        .auto-style20 {
            height: 22px;
            width: 189px;
        }
        .auto-style21 {
            height: 26px;
            width: 189px;
        }
        .auto-style22 {
            height: 26px;
            width: 135px;
        }
        .auto-style23 {
            width: 135px;
            height: 25px;
        }
        .auto-style24 {
            width: 135px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width: 100%;">
        <tr>
            <td class="auto-style11" align="left">
                &nbsp;</td>
            <td class="auto-style19" align="left">
                <asp:Label ID="Label1" runat="server" Text="Nom complet:" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox_NomComplet" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style11" align="left">
                &nbsp;</td>
            <td class="auto-style19" align="left">
                <asp:Label ID="Label2" runat="server" Text="CIN:" Font-Size="Large"></asp:Label>
            </td>
            <td>
                <br />
                <asp:TextBox ID="TextBox_CIN" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style9" align="left">
                &nbsp;</td>
            <td class="auto-style20" align="left">
                <asp:Label ID="Label3" runat="server" Text="Email:" Font-Size="Large"></asp:Label>
            </td>
            <td class="auto-style3">
                <br />
                <asp:TextBox ID="TextBox_Email" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style10" align="left">
                </td>
            <td class="auto-style21" align="left">
                <asp:Label ID="Label4" runat="server" Text="Pass Word:" Font-Size="Large"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style12">
                <br />
                <asp:TextBox ID="TextBox_PassWord" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>
    <table>
        <tr>
            <td align="left" class="auto-style22">&nbsp;</td>
            <td align="left" class="auto-style14">
                <asp:CheckBox ID="CheckBox_Filiere" runat="server" Text="Filiere" Font-Size="Medium" />
                <br />
                </td>
            <td align="left" class="auto-style13">
                <asp:CheckBox ID="CheckBox_Module" runat="server" Text="Module" Font-Size="Medium" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style23">
                &nbsp;</td>
            <td align="left" class="auto-style15">
              
               
                <asp:CheckBox ID="CheckBox_Formation" runat="server" Text="Formation" Font-Size="Medium" Font-Italic="False" />
                <br />
            </td>
            <td align="left" class="auto-style16">
                <asp:CheckBox ID="CheckBox_GestionFormateur" runat="server" Text="Gestion des Formateurs" Font-Size="Medium" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style23">
                &nbsp;</td>
            <td align="left" class="auto-style15">
                <asp:CheckBox ID="CheckBox_Affectation" runat="server" Text="Affectation des Modules" Font-Size="Large" />
                <br />
            </td>
            <td align="left" class="auto-style16">
                <asp:CheckBox ID="CheckBox_Groupe" runat="server" Text="Groupe" Font-Size="Large" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style22">
                &nbsp;</td>
            <td align="left" class="auto-style14">
                <asp:CheckBox ID="CheckBox_Stagiaire" runat="server" Text="Stagiaire" Font-Size="Large" />
                <br />
            </td>
            <td align="left">
                <asp:CheckBox ID="CheckBox_Salle" runat="server" Text="Salle" Font-Size="Large" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style22">
                &nbsp;</td>
            <td align="left" class="auto-style14">
                <asp:CheckBox ID="CheckBox_Proposition_des_Examens" runat="server" Text="Proposition des Examens" Font-Size="Large" />
                <br />
            </td>
            <td align="left">
                <asp:CheckBox ID="CheckBox_Surveillance_des_Examens" runat="server" Text="Surveillance des Examens" Font-Size="Large" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style23">
                </td>
            <td align="left" class="auto-style15">
                <asp:CheckBox ID="CheckBox_Salle2" runat="server" Text="Autorisation d'absence des Formateurs" Font-Size="Large" />
                <br />
            </td>
            <td align="left" class="auto-style16">
                <asp:CheckBox ID="CheckBox_Absences_des_Formateurs" runat="server" Text="Absences des Formateurs" Font-Size="Large" />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style24">
                &nbsp;</td>
            <td align="left" class="auto-style17">
                <asp:CheckBox ID="CheckBox_Les_Jours_Feries" runat="server" Text="Les Jours Feries" Font-Size="Large" />
            </td>
            <td align="left" class="auto-style18">
                <asp:CheckBox ID="CheckBox_Reunion" runat="server" Text="Reunion" Font-Size="Large" />
            </td>
        </tr>
        <tr>
            <td align="left" class="auto-style22">
                &nbsp;</td>
            <td align="left" class="auto-style14">
                <asp:CheckBox ID="CheckBox_Club" runat="server" Text="Club" Font-Size="Large" />
                <br />
            </td>
            <td align="left">
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" colspan="3">
                <br />
                <br />
                <asp:Button ID="Button_Valider" runat="server" Text="Valider" Width="240px" class="btn btn-primary"/>
                <br />
                <asp:GridView ID="GridView_Delegation" runat="server" Width="570px">
                </asp:GridView>
                <br />
                <asp:Button ID="Button_Imprimer" runat="server" Text="Imprimer" Width="125px" class="btn btn-primary" />
            </td>
        </tr>
    </table>
</asp:Content>
