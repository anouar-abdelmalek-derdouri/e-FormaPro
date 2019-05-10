<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Ajouter_Encadrant_Entreprise.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.stage_Pr.Ajouter_Encadrent_Entreprise" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        .style2
        {
            text-align: left;
            width: 130px;
        }
        .style3
        {
            text-align: left;
        }
    </style>

    <div style="text-align: center">
    
        Forme Derectrice : Button Ajouter Entreprise Encadrant<br />
        Entreprise<br /><div>
&nbsp;&nbsp;
        <br />
            <br />
            <table style="width:100%;">
                <tr>
                    <td class="style2">
                        <asp:Label ID="Label1" runat="server" Text="Nom  :" style="text-align: left"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox1_NomEntre" runat="server" Width="244px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
        <asp:Label ID="Label2" runat="server" Text="Téléphone  :" style="text-align: left"></asp:Label>
                    </td>
                    <td style="text-align: left">
        <asp:TextBox ID="TextBox1_TeleEntre" runat="server" style="text-align: left" Width="242px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style2">
        <asp:Label ID="Label3" runat="server" Text="Email  :"></asp:Label>
                    </td>
                    <td style="text-align: left">
        <asp:TextBox ID="TextBox1_EmailEntre" runat="server" style="text-align: left" Width="239px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                <td class="style2">
        <asp:Label ID="Label7" runat="server" Text="Adresse  :"></asp:Label>
                    </td>
                <td style="text-align: left">
        <asp:TextBox ID="TextBox1_AdrsEntre" runat="server" Width="237px"></asp:TextBox>
                    </td>
                <td></td>
                </tr>
            </table>
            <br />
        </div> <br />

        <hr /> Encadrant<br />
        <div class="style1">
&nbsp;&nbsp;&nbsp;
            <table style="width:100%;">
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="Label4" runat="server" Text="Nom  :"></asp:Label>
                    </td>
                    <td style="text-align: left">
                        <asp:TextBox ID="TextBox2_NomEncadre" runat="server" Width="212px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="text-align: left">
        <asp:Label ID="Label5" runat="server" Text="Téléphone  :"></asp:Label>
                    </td>
                    <td style="text-align: left">
        <asp:TextBox ID="TextBox2_TeleEncadre" runat="server" Width="205px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="style3">
        <asp:Label ID="Label6" runat="server" Text="Email  :"></asp:Label>
                    </td>
                    <td class="style3">
        <asp:TextBox ID="TextBox2_EmailEncadre" runat="server" Width="211px"></asp:TextBox>
                    </td>
                    <td>
                        &nbsp;</td>
                </tr>
            </table>
            <br />
        </div>
         
        <br />
        <asp:Button ID="Button1_Enregestr" runat="server" 
            Text="Enregestrer" />
        <br />
&nbsp;<br />
    
    </div>
</asp:Content>
