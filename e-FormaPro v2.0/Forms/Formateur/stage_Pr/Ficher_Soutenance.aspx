<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Ficher_Soutenance.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Formateur.stage_Pr.Ficher_Soutenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <style type="text/css">

    table
    { border:2px green solid;
    }
    td
    { border:2px green solid;
    }
        .style1
        {
            width: 100%;
        }
        .auto-style2 {
            text-align: left;
        }
    </style>


    <div>
    
        <br />
    <div style="text-align: center">
    
        Forme 
        Formateur: Boutton&nbsp;Noter
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Stagiaire:"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Nom et prénom du stagiaire:"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList_NomPréStg" runat="server">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label_NomPrénom" runat="server" BackColor="White"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Spécialité:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Spécialité" runat="server"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Note de l’entreprise:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_NoteEntrep" runat="server"></asp:TextBox>
                    <asp:Label ID="Label_NomPrénom0" runat="server" BackColor="White" Text="/60"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" 
                        Text="Evaluation du stage par le Jury de soutenance :"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Evaluation du Rapport:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox_EvaRapport" runat="server"></asp:TextBox>
&nbsp;<asp:Label ID="Label23" runat="server" Text="/15"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" 
                        Text="Présentation du rapport (bureautique):"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb01" runat="server"></asp:TextBox>
                    <asp:Label ID="Label24" runat="server" Text="/5"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Structure du rapport:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb02" runat="server"></asp:TextBox>
                    <asp:Label ID="Label25" runat="server" Text="/4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" Text="Orthographe, Syntaxe, Grammaire:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb03" runat="server"></asp:TextBox>
                    <asp:Label ID="Label26" runat="server" Text="/3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" 
                        Text="Cohérence entre les parties du rapport:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb04" runat="server"></asp:TextBox>
                    <asp:Label ID="Label27" runat="server" Text="/3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Evaluation  Soutenance  (exposé):"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb05" runat="server"></asp:TextBox>
                    <asp:Label ID="Label28" runat="server" Text="/25"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" 
                        Text="Présentation orale (clarté, élocution):"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb06" runat="server"></asp:TextBox>
                    <asp:Label ID="Label29" runat="server" Text="/6"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" 
                        Text="Qualité des diapositives  power point:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb07" runat="server"></asp:TextBox>
                    <asp:Label ID="Label30" runat="server" Text="/4"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" 
                        Text="Respect du plan de la présentation:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb08" runat="server"></asp:TextBox>
                    <asp:Label ID="Label31" runat="server" Text="/3"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" 
                        Text="Degré de Maitrise du sujet de stage:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb09" runat="server"></asp:TextBox>
                    <asp:Label ID="Label32" runat="server" Text="/6"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" 
                        Text="Qualité du Travail pratique Réalisé:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="Tb10" runat="server"></asp:TextBox>
                    <asp:Label ID="Label33" runat="server" Text="/6"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" 
                        Text="Note du jury (note rapport + note soutenance):"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox_NoteFinJry" runat="server"></asp:TextBox>
                    <asp:Label ID="Label34" runat="server" Text="/40"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Les Notes:"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" 
                        Text="Note du stage (note du jury + note entreprise): "></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox_NoteStage" runat="server"></asp:TextBox>
                    <asp:Label ID="Label35" runat="server" Text="/100"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Note finale du stage :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox_NoteDernier" runat="server"></asp:TextBox>
                    <asp:Label ID="Label36" runat="server" Text="/20"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Fait à :"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox_ville" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button__Insert" runat="server" Text="Insere le document Word" />
&nbsp;<asp:Button ID="Button_remplireWord" runat="server" 
            Text="Obtenir le document Word" />
        <br />
    
    </div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
</asp:Content>
