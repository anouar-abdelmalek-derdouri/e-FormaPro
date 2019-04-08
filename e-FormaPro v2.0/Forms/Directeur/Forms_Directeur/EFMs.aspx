<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="EFMs.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Proposition" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table style="width:100%;">
        <tr>

                <td class="style12">
                    <asp:Label ID="Label6" runat="server" Text="Proposition :"></asp:Label>
                </td>
               
            </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" BorderStyle="None" Text="Formateur :"></asp:Label>
            </td>
            <td class="style1">
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="16px" 
                    Width="125px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style6">
                <asp:Label ID="Label2" runat="server" Text="Module:"></asp:Label>
            </td>
            <td class="style7">
                <asp:DropDownList ID="DropDownList_Module" runat="server" Width="128px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style4">
                <asp:Label ID="Label3" runat="server" Text="Message :"></asp:Label>
            </td>
            <td class="style5">
                <asp:TextBox ID="TextBox_Message" runat="server" Height="57px" Width="154px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label4" runat="server" Text="Date :"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox_Date" runat="server" TextMode="Date"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style11">
                <asp:Button ID="Button_Envoyer" runat="server" Text="Envoyer la notification" />
            </td>
        </tr>
    </table>
</asp:Content>
