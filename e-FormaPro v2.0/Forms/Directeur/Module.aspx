<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Module.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Module" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 144px;
        }
        .auto-style2 {
            height: 23px;
            width: 144px;
        }
        .auto-style3 {
            height: 22px;
            width: 98px;
        }
        .auto-style4 {
            width: 268px;
            height: 22px;
        }
        .auto-style11 {
            height: 20px;
        }
        .auto-style13 {
            width: 268px;
            height: 60px;
        }
        .auto-style14 {
            margin-left: 9;
            margin-right: 22;
        }
        .auto-style15 {
            height: 20px;
            width: 46px;
        }
        .auto-style16 {
            width: 46px;
        }
        .auto-style17 {
            width: 46px;
            height: 60px;
        }
        .auto-style18 {
            height: 22px;
            width: 35%;
        }
        .auto-style19 {
            height: 23px;
            width: 46px;
        }
        .auto-style20 {
            width: 268px;
        }
        .auto-style21 {
            height: 23px;
            width: 268px;
        }
        .auto-style22 {
            width: 98px;
        }
        .auto-style23 {
            width: 98px;
            height: 60px;
        }
        .auto-style24 {
            height: 23px;
            width: 98px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

      <table style="width:100%;">
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style22">
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Numéro :"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style20">
                <br />
                <br />
                <asp:TextBox ID="TextBox_numéro" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
            <td class="auto-style1" rowspan="7">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style22">
                <asp:Label ID="Label2" runat="server" Text="Nom Module :"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style20">
                <asp:TextBox ID="TextBox_Nom" runat="server"></asp:TextBox>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style22">
                <asp:Label ID="Label4" runat="server" Text="Niveau :"></asp:Label>
                <br />
            </td>
            <td class="auto-style20">
                <asp:DropDownList ID="DropDownList_Niveau" runat="server" Height="35px" Width="155px">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style17">
                &nbsp;</td>
            <td class="auto-style23">
                <asp:Label ID="Label3" runat="server" Text="Mass Horraire :"></asp:Label>
                <br />
            </td>
            <td class="auto-style13">
                <asp:TextBox ID="TextBox_MasseHoraire" runat="server"></asp:TextBox>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style22">
                <asp:Label ID="Label5" runat="server" Text="Semestre :"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style20">
                <asp:DropDownList ID="DropDownList_semester" runat="server" Height="35px" Width="155px">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                &nbsp;</td>
            <td class="auto-style3">
                <asp:Label ID="Label6" runat="server" Text="Filiere :"></asp:Label>
            </td>
            <td class="auto-style4">
                <asp:DropDownList ID="DropDownList_fieliere" runat="server" Height="35px" Width="155px">
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                &nbsp;</td>
            <td class="auto-style22">
                <asp:Label ID="Label10" runat="server" Text="Coefficient :"></asp:Label>
                <br />
            </td>
            <td class="auto-style20">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style24">
                <asp:Label ID="Label7" runat="server" Text="Types :"></asp:Label>
                </td>
            <td class="auto-style21">
                &nbsp;<asp:Label ID="Label8" runat="server" Text="Pratique    :"></asp:Label>
                <asp:TextBox ID="TextBox_Pratique" runat="server" Width="54px" CssClass="auto-style14"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="Theorique :"></asp:Label>
                <asp:TextBox ID="TextBox_Theorique" runat="server" Width="52px"></asp:TextBox>
            </td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;</td>
            <td class="auto-style24">
                &nbsp;</td>
            <td class="auto-style21">
                &nbsp;</td>
            <td class="auto-style2">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;</td>
           
          
            <td style="height: 23px;"  colspan="3">
                <asp:CheckBox ID="CheckBox_Regionalise" runat="server" Text="Regionalise" Font-Size="Large" />
            </td>
           
          
        </tr>
        <tr>
            <td align="right" class="auto-style15">
                </td>
            <td align="right" class="auto-style11" colspan="3">
                <asp:Label ID="Label_annee" runat="server" Text="2018/2019"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="4" align="center">
                <br />
                <asp:Button ID="button_ajouter" runat="server" Text="Ajouter" Width="136px" class="btn btn-primary"/>
                <br />
                <asp:GridView ID="GridView_Module" runat="server" Width="598px">
                </asp:GridView>
            </td>
        </tr>
        </table>
</asp:Content>
