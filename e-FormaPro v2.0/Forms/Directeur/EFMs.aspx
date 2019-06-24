<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="EFMs.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.EFMs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 20%;
        }
        .auto-style4 {
            width: 131px;
            height: 43px;
        }
        .auto-style5 {
            height: 43px;
        }
        .auto-style6 {
            width: 131px;
            height: 80px;
        }
        .auto-style7 {
            height: 80px;
        }
        .auto-style8 {
            width: 131px;
            height: 42px;
        }
        .auto-style9 {
            height: 42px;
        }
        .auto-style10 {
            width: 20%;
            height: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table style="width:100%;">
        <tr>

                <td class="auto-style10">
                    </td>
               
                <td class="auto-style10">
                    <br />
                    <br />
                    <br />
                    <asp:Label ID="Label6" runat="server" Text="Proposition :"></asp:Label>
                </td>
               
            </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label1" runat="server" BorderStyle="None" Text="Formateur :"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="22px" 
                    Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="Label2" runat="server" Text="Module:"></asp:Label>
            </td>
            <td class="auto-style5">
                <asp:DropDownList ID="DropDownList_Module" runat="server" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;</td>
            <td class="auto-style6">
                <asp:Label ID="Label3" runat="server" Text="Message :"></asp:Label>
            </td>
            <td class="auto-style7">
                <asp:TextBox ID="TextBox_Message" runat="server" Height="57px" Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;</td>
            <td class="auto-style8">
                <asp:Label ID="Label4" runat="server" Text="Date :"></asp:Label>
            </td>
            <td class="auto-style9">
                <asp:TextBox ID="TextBox_Date" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;</td>
            <td class="auto-style1">
            </td>
            <td class="style11">
                <br />
                <br />
                <asp:Button ID="Button_Envoyer" runat="server" Text="Envoyer la notification" class="btn btn-primary"/>
            </td>
        </tr>
    </table>
</asp:Content>
