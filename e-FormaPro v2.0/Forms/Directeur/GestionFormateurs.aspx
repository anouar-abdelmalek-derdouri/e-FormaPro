<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="GestionFormateurs.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Gestion_des_formateurs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">


    <table style="width:100%;">
        <tr>
            <td style="width: 155px; height: 32px;">
                </td>
            <td style="width: 199px; height: 32px;">
                <asp:RadioButton ID="RadioButton_permanant" runat="server" Text="Permanant" />
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 24px;">
                </td>
            <td style="width: 199px; height: 24px;">
                <asp:RadioButton ID="RadioButton_vacataire" runat="server" Text="Vacataire" />
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 64px;">
                <asp:Label ID="Label1" runat="server" Text="Matricule/CIN :"></asp:Label>
            </td>
            <td style="width: 199px; height: 64px;">
                <asp:TextBox ID="TextBox_matricule" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 73px;">
                <asp:Label ID="Label2" runat="server" Text="Filiére : "></asp:Label>
            </td>
            <td style="width: 199px; height: 73px;">
                <asp:DropDownList ID="DropDownList_fieliere" runat="server">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 110px">
                <asp:Label ID="Label3" runat="server" Text="Nom :"></asp:Label>
            </td>
            <td style="height: 110px; width: 199px">
                <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
            </td>
            <td style="width: 129px; height: 110px">
                <asp:Label ID="Label4" runat="server" Text="Prénom :"></asp:Label>
            </td>
            <td style="height: 110px">
                <asp:TextBox ID="TextBox_prenom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 98px">
                <asp:Label ID="Label5" runat="server" Text="Tele :"></asp:Label>
            </td>
            <td style="width: 199px; height: 98px">
                <asp:TextBox ID="TextBox_tele" runat="server"></asp:TextBox>
            </td>
            <td style="width: 129px; height: 98px">
                <asp:Label ID="Label6" runat="server">Addresse :</asp:Label>
            </td>
             <td style="height: 98px">
                <asp:TextBox ID="TextBox_address" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 75px;">
                </td>
            <td style="width: 199px; height: 75px;">
                <asp:Label ID="Label7" runat="server" Text="Date de Naissance :"></asp:Label>
            </td>
            <td style="width: 129px; height: 75px;">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 56px;">
                </td>
            <td style="width: 199px; height: 56px;">
                <asp:Label ID="Label8" runat="server" Text="Email :"></asp:Label>
            </td>
            <td style="width: 129px; height: 56px;">
                <asp:TextBox ID="TextBox_emeil" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 155px; height: 92px;">
                </td>
            <td style="width: 199px; height: 92px;">
                &nbsp;</td>
            <td style="width: 129px; height: 92px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td colspan="4" style="width: 155px; height: 23px;">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="403px" />
                </td>
          
        </tr>
        <tr>
            <td style="width: 155px" colspan="4">
                <asp:GridView ID="GridView_Formateur" runat="server" Width="750px" 
                     >
                </asp:GridView>
            </td>
        </tr>
        
    </table>
</asp:Content>
