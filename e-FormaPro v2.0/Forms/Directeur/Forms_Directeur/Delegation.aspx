<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Delegation.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Delegation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width:100%;">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Nom complet:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_NomComplet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="CIN:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_CIN" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox_Email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Label ID="Label4" runat="server" Text="Pass Word:"></asp:Label>
            </td>
            <td style="height: 26px">
                <asp:TextBox ID="TextBox_PassWord" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Formation" runat="server" Text="Formation" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Filiere" runat="server" Text="Filiere" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Module" runat="server" Text="Module" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_GestionFormateur" runat="server" Text="Gestion des Formateurs" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Affectation" runat="server" Text="Affectation des Modules" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Groupe" runat="server" Text="Groupe" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Stagiaire" runat="server" Text="Stagiaire" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Salle" runat="server" Text="Salle" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Proposition_des_Examens" runat="server" Text="Proposition des Examens" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Surveillance_des_Examens" runat="server" Text="Surveillance des Examens" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Salle2" runat="server" Text="Autorisation d'absence des Formateurs" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Absences_des_Formateurs" runat="server" Text="Absences des Formateurs" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Les_Jours_Feries" runat="server" Text="Les Jours Feries" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Reunion" runat="server" Text="Reunion" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Club" runat="server" Text="Club" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Gestion_des_Entreprises" runat="server" Text="Gestion des Entreprises" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Annee_Scolaire" runat="server" Text="Annee Scolaire" />
            </td>
            <td style="height: 26px">
                <asp:CheckBox ID="CheckBox_Delegation" runat="server" Text="Delegation" />
            </td>
        </tr>
        <tr>
            <td style="height: 26px">
                <asp:Button ID="Button_Valider" runat="server" Text="Valider" Width="240px" />
            </td>
            <td style="height: 26px">&nbsp;</td>
        </tr>
        <tr>
            <td colspan ="2" style="height: 26px">
                <asp:GridView ID="GridView_Delegation" runat="server" Width="570px">
                </asp:GridView>
            </td>
           
        </tr>
        <tr>
            <td colspan ="2" style="height: 26px">
                <asp:Button ID="Button_Imprimer" runat="server" Text="Imprimer" Width="125px" />
            </td>
           
        </tr>
    </table>

</asp:Content>
