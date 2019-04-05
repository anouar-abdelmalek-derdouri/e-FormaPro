<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Surveillant/SurveillantGénéral_MasterPage.Master" AutoEventWireup="true" CodeBehind="infosD'absenceDuStagiaires.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Surveillant.Forms_Surveillant.infosD_absenceDuStagiaires" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">
                <asp:Label ID="Label1" runat="server" BorderStyle="Double" Font-Bold="True" 
                        Font-Size="Larger" Text="Infos d'absence du stagiaire" Width="702px"></asp:Label>
                    </td>
            
        </tr>
        
        <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td align="center">
                <asp:Label ID="Label3" runat="server" Text="Nom complet:"></asp:Label>
&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="143px"></asp:TextBox>
            </td>
            <td align="center">
                <asp:Label ID="Label4" runat="server" Text="Nombre d&quot;absences:"></asp:Label>
&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
            
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
        <tr>
            <td colspan="3">
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSource2" 
                    Width="618px">
                    <series>
                        <asp:Series Name="Series1" XValueMember="Module" YValueMembers="column1">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Gestion_Des_Certificats_Et_Des_CompétitionsConnectionString %>" 
                    SelectCommand="SELECT [Module], [Nombre d'absence] AS column1 FROM [V_passageDesCertificatsTest]">
                </asp:SqlDataSource>
            </td>
           
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
           
        </tr>
    </table>
</asp:Content>
