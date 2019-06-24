<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Etat d'avancement.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Etat_d_avancement" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 62px;
        }
        .auto-style2 {
            width: 462px;
            height: 62px;
        }
        .auto-style3 {
            width: 10% ;
        }
        .auto-style4 {
            height: 62px;
            width: 114px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

     <table align="center">
        <tr>
            <td class="auto-style3" >
                &nbsp;</td>
            <td >
                <asp:Label ID="Label1" runat="server" Text="Formateur:"></asp:Label>
                <br />
                <br />
            </td>
            <td>
                <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="30px" 
                    Width="186px">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style4" >
            </td>
            <td class="auto-style1" >
                <asp:Label ID="Label2" runat="server" Text="Groupe:"></asp:Label>
                <br />
                <br />
            </td>
            <td class="auto-style2">
                <asp:DropDownList ID="DropDownList_Groupe" runat="server" Height="30px" 
                    Width="186px">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="auto-style3" >
                &nbsp;</td>
            <td >
                <asp:Label ID="Label3" runat="server" Text="Module:"></asp:Label>
                <br />
                <br />
            </td>
            <td style="width: 462px">
                <asp:DropDownList ID="DropDownList_Module" runat="server" Height="30px" 
                    Width="186px">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td  colspan = "3" align="center">
                <asp:Button ID="Button_Rechercher" runat="server" Text="Rechercher" 
                    Width="301px" class="btn btn-primary" />
                <asp:Chart ID="Chart1" runat="server" Width="619px">
                    <series>
                        <asp:Series ChartType="Pie" Name="Series1" ChartArea="ChartArea1">
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
