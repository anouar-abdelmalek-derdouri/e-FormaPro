<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="Profil.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.Profil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
        width: 190px;
    }
        .auto-style3 {
            width: 147px;
        }
        .auto-style4 {
            margin-left: 0px;
        }
        .auto-style5 {
        width: 93px;
    }
        .auto-style6 {
            width: 141%;
            height: 157px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label7" runat="server" BorderStyle="Double" Font-Bold="True" 
                        Font-Size="Larger" Text=" Profil" Width="702px"></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
            
        </tr>
        <tr>
        <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label5" runat="server" Text="Nom complet :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style4"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
         <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label1" runat="server" Text="Date de naissance :"></asp:Label>
            &nbsp;
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
         <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label2" runat="server" Text="Téléphone :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
           
        </tr>
        <tr>
         <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label6" runat="server" Text="Adresse :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            </td>
           
        </tr>
         <tr>
          <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label3" runat="server" Text="Email :"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
             </td>
            
        </tr>
         <tr>
         <td class="auto-style3">
                &nbsp;</td>
            <td class="auto-style5">
                <asp:Label ID="Label4" runat="server" Text="Mot de passe"></asp:Label>
            </td>
            <td class="auto-style2">
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
             </td>
            
        </tr>
        <tr>
         <td colspan="3">
                &nbsp;</td>
            
        </tr>
        <tr>
         <td colspan="3" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" style="margin-left: 0px" 
                    Text="Modifier" Width="95px" />
            </td>
            
        </tr>
        <tr>
         <td colspan="3">
                &nbsp;</td>
            
        </tr>
    </table>
</asp:Content>
