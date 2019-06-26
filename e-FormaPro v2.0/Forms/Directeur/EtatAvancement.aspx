<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="EtatAvancement.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Etat_d_avancement" %>
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
                    Width="186px" DataSourceID="SqlDataSource_Formateur" DataTextField="Nom complet" DataValueField="Matricule" AutoPostBack="True">
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
                    Width="186px" AutoPostBack="True" DataSourceID="SqlDataSource_Groupe" DataTextField="Nom" DataValueField="Id_Groupes">
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
                    Width="186px" AutoPostBack="True" DataSourceID="SqlDataSource_Module" DataTextField="Nom" DataValueField="Id_Module">
                </asp:DropDownList>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td  colspan = "3" align="center">
                <asp:Chart ID="Chart1" runat="server" Width="619px" DataSourceID="SqlDataSource_Avancement">
                    <series>
                        <asp:Series Name="Series1" ChartArea="ChartArea1" XValueMember="MassHorraire" YValueMembers="Cumule">
                        </asp:Series>
                    </series>
                    <chartareas>
                        <asp:ChartArea Name="ChartArea1">
                        </asp:ChartArea>
                    </chartareas>
                </asp:Chart>
                <asp:SqlDataSource ID="SqlDataSource_Formateur" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT *, (Formateurs.Nom + ' ' + Formateurs.Prenom) [Nom complet] FROM [Formateurs]"></asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource_Groupe" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT * FROM [Groupes]" ProviderName="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString.ProviderName %>"></asp:SqlDataSource>
                <br />
                <asp:SqlDataSource ID="SqlDataSource_Module" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT * FROM [Modules]" ProviderName="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString.ProviderName %>"></asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource_Avancement" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT SUM(Seances.Duree) AS Cumule, Modules.MassHorraire FROM Seances INNER JOIN Modules ON Modules.Id_Module = Seances.Module INNER JOIN Formateurs ON Formateurs.Matricule = Seances.Formateur INNER JOIN Groupes ON Groupes.Id_Groupes = Seances.Groupe GROUP BY Formateurs.Matricule, Groupes.Id_Groupes, Modules.Id_Module, Modules.MassHorraire HAVING (Formateurs.Matricule = @formateur) AND (Groupes.Id_Groupes = @groupe) AND (Modules.Id_Module = @module)">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="DropDownList_Formateur" Name="formateur" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList_Groupe" Name="groupe" PropertyName="SelectedValue" />
                        <asp:ControlParameter ControlID="DropDownList_Module" Name="module" PropertyName="SelectedValue" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
           
        </tr>
        </table>

</asp:Content>
