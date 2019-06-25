<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="ProfileDericteur.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.ProfileDericteur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-top: 0px;
        }

        .auto-style2 {
            margin-bottom: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <table style="width: 100%;">
        <tr>
            <td align="center">
                <br />
                <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="16px"
                    Width="175px">
                </asp:DropDownList>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label_Matricule" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label_Nom" runat="server"></asp:Label>
                <br />
                <asp:Label ID="Label_Prenom" runat="server"></asp:Label>
                <br />
                <asp:Button ID="TextBox_ModifierEmail" class="btn btn-primary" runat="server" Text="Modifier Email" />
                &nbsp;&nbsp;
                <asp:Button ID="TextBox_ModifierMotPasse" class="btn btn-primary" runat="server" Text="Modifier Mot Passe" />
                <br />
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style1">
                <asp:MultiView ActiveViewIndex="0" runat="server" ID="mv">
                    <asp:View runat="server">
                        <asp:Panel ID="Panel_Email" runat="server" CssClass="auto-style2" Height="213px">
                            <asp:Label ID="Label2" runat="server" Text="Email :"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_EmailOld" runat="server" Height="25px" Width="279px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label3" runat="server" Text="Nouvelle Email :"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_EmailNew" runat="server" Height="25px" Width="279px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label4" runat="server" Text="Confermer Email :"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_ConfermerEmail" runat="server" Height="25px" Width="279px"></asp:TextBox>
                            <br />
                            <asp:CompareValidator ID="CompareValidator_Email" runat="server" ControlToCompare="TextBox_ConfermerEmail" ControlToValidate="TextBox_EmailNew" ErrorMessage="Email n'est pas correcte !!" ForeColor="Red"></asp:CompareValidator>
                            <br />
                            <asp:Button ID="Button_ChangeEmail" runat="server" Text="Change Email" class="btn btn-primary" />
                        </asp:Panel>
                    </asp:View>
                    <asp:View runat="server">
                        <asp:Panel ID="Panel_Email0" runat="server" CssClass="auto-style2" Height="236px">
                            <asp:Label ID="Label6" runat="server" Text="Mot passe :"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_motPassOld" runat="server" Height="25px" TextMode="Password" Width="279px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label7" runat="server" Text="Nouvelle Mot Passe"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_MotPassNew" runat="server" Height="25px" TextMode="Password" Width="279px"></asp:TextBox>
                            <br />
                            <asp:Label ID="Label8" runat="server" Text="Confermer Mot Passe :"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_ConfermerMotPasse" runat="server" Height="25px" TextMode="Password" Width="279px"></asp:TextBox>
                            <br />
                            <asp:CompareValidator ID="CompareValidator_MotPass" runat="server" ControlToCompare="TextBox_ConfermerMotPasse" ControlToValidate="TextBox_MotPassNew" ErrorMessage="Mot Passe n'est pas correcte !!" ForeColor="Red"></asp:CompareValidator>
                            <br />
                            <asp:Button ID="Button_ChangeEmail0" runat="server" Text="Change Mot Passe" Width="175px" class="btn btn-primary" />
                        </asp:Panel>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr>
            <td class="style3" align="center">
                <br />
                <br />
            </td>

        </tr>
        <tr>
            <td class="style3" align="center">&nbsp;</td>

        </tr>
    </table>
</asp:Content>
