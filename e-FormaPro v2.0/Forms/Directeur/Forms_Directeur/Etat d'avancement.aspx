<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Etat d'avancement.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Etat_d_avancement" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table ">
        <tr>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Formateur:"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="16px" 
                    Width="186px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label2" runat="server" Text="Groupe:"></asp:Label>
            </td>
            <td style="width: 462px">
                <asp:DropDownList ID="DropDownList_Groupe" runat="server" Height="16px" 
                    Width="186px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Module:"></asp:Label>
            </td>
            <td style="width: 462px">
                <asp:DropDownList ID="DropDownList_Module" runat="server" Height="16px" 
                    Width="184px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  colspan = "2">
                <asp:Button ID="Button_Rechercher" runat="server" Text="Rechercher" 
                    Width="301px" />
            </td>
           
        </tr>
        <tr>
            <td  colspan = "2">
                <asp:Chart ID="Chart1" runat="server">
                    <series>
                        <asp:Series ChartType="Pie" Name="Series1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
            </td>
            
        </tr>
    </table>
</asp:Content>
