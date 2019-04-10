<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Infos_Presonnel.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Entreprise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: left;
        }
    </style>


    <div style="text-align: center">
    
    &nbsp;Forme Encadrant: Boutton&nbsp;Consulte les infos personnelle<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        <br />
        &nbsp;<br />
        <table style="width:100%;">
            <tr>
                <td class="style1">
        <asp:Label ID="Label2" runat="server" Text="Nom  Et Prénom:  "></asp:Label>
                </td>
                <td class="style1">
        <asp:TextBox ID="TextBox1_NomPrenom" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
        <asp:Label ID="Label4" runat="server" Text="Téléphone : "></asp:Label>
                </td>
                <td class="style1">
        <asp:TextBox ID="TextBox1_Telephone" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
        <asp:Label ID="Label5" runat="server" Text="Email  : "></asp:Label>
                </td>
                <td class="style1">
        <asp:TextBox ID="TextBox1_Email" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td class="style1"><asp:Label ID="Label6" runat="server" Text="Mot De Pass  : "></asp:Label>
                </td>
            <td class="style1">
        <asp:TextBox ID="TextBox1_MotPass" runat="server"></asp:TextBox>


                </td>
            </tr>
        </table>


        <br />
    <hr />
        Entreprise<br />
        <div>
&nbsp;&nbsp;<br />
        &nbsp;<br />
            &nbsp;<br />
        </div> 
        <table style="width:100%;">
            <tr>
                <td class="style1">
                    <asp:Label ID="Label1" runat="server" Text="Nom  :"></asp:Label>
                </td>
                <td class="style1">
                    <asp:TextBox ID="TextBox1_NomEntre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
        <asp:Label ID="Label8" runat="server" Text="Téléphone  :"></asp:Label>
                </td>
                <td class="style1">
        <asp:TextBox ID="TextBox1_TeleEntre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style1">
        <asp:Label ID="Label3" runat="server" Text="Email  :"></asp:Label>
                </td>
                <td class="style1">
        <asp:TextBox ID="TextBox1_EmailEntre" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
            <td class="style1">
        <asp:Label ID="Label7" runat="server" Text="Adresse  :"></asp:Label>
                </td>
            <td class="style1">
        <asp:TextBox ID="TextBox1_AdrsEntre" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <br />
        <asp:Button ID="Button_Enregestre" runat="server" Text="Enregestre" 
            Width="232px" />
        <br />
    
    </div>
    </asp:Content>
