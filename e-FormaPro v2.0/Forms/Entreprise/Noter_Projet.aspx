<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Noter_Projet.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Entreprise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <style type="text/css">
    table,td
    { border:2px green solid;
    }
        .style1
        {
            width: 100%;
        }
    </style>

    <div style="text-align: center">
    
        <br />
    
        Forme Encadrant: Boutton&nbsp;Noter
        <br />
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label_NomEncadr" runat="server" Text="Choir un Stagiaire :"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="DropDownList_NomStagiaire" runat="server" Height="22px" 
                        Width="125px">
                    </asp:DropDownList>
                </td>
                <td>
                    <asp:Label ID="Label_NomPre" runat="server" Text="Nom  Prénom" 
                        BackColor="White"></asp:Label>
                </td>
            </tr>
        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Fonction d'encadrent:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_FonctionEncad" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Etablissement de Formation :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Etablsemen" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Image ID="Image1" runat="server" />
        <br />
        <table style="width:100%">
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Critères d'appréciation:"></asp:Label>
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:Label ID="Label21" runat="server" Text="Observations:"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="Ponctualité - Assiduité:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB1" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B1" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB1" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P1" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS1" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label7" runat="server" Text="Esprit de l’Initiative:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB2" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B2" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB2" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P2" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS2" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs2" runat="server"></asp:TextBox>
                </td>
            </tr>    <tr>
                <td>
                    <asp:Label ID="Label8" runat="server" Text="Connaissances dans le métier:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB3" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B3" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB3" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P3" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS3" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs3" runat="server"></asp:TextBox>
                </td>
            </tr>    <tr>
                <td>
                    <asp:Label ID="Label9" runat="server" 
                        Text="Connaissance des équipements utilisés:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB4" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B4" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB4" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P4" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS4" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs4" runat="server"></asp:TextBox>
                </td>
            </tr>    <tr>
                <td>
                    <asp:Label ID="Label10" runat="server" Text="Qualité des travaux réalisés:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB5" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B5" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB5" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P5" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS5" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs5" runat="server"></asp:TextBox>
                </td>
            </tr>    <tr>
                <td>
                    <asp:Label ID="Label11" runat="server" Text="Rapidité – Respect des délais:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB6" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B6" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB6" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P6" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS6" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs6" runat="server"></asp:TextBox>
                </td>
            </tr>
                <tr>
                <td>
                    <asp:Label ID="Label12" runat="server" 
                        Text="Degré d’Organisation du stagiaire:"></asp:Label>
                    </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB7" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B7" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB7" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P7" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS7" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                    </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs7" runat="server"></asp:TextBox>
                    </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label13" runat="server" Text="Capacité d’adaptation :"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB8" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B8" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB8" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P8" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS8" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs8" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label14" runat="server" Text="Relation avec les collaborateurs:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB9" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B9" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB9" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P9" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS9" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs9" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label15" runat="server" Text="Aspect Vestimentaire – propreté:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB10" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B10" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB10" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P10" runat="server" 
                        oncheckedchanged="RadioButton54_CheckedChanged" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS10" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs10" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label16" runat="server" Text="Ecoute  et communication:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB11" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B11" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB11" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P11" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS11" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs11" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label17" runat="server" Text="Esprit d’équipe:"></asp:Label>
                </td>
                <td>
                    <asp:RadioButton ID="RadioButton_TB12" runat="server" Text="TB" />
                    <asp:RadioButton ID="RadioButton_B12" runat="server" Text="B" />
                    <asp:RadioButton ID="RadioButton_AB12" runat="server" Text="AB" />
                    <asp:RadioButton ID="RadioButton_P12" runat="server" Text="P" />
                    <asp:RadioButton ID="RadioButton_INS12" runat="server" 
                        oncheckedchanged="RadioButton5_CheckedChanged" Text="INS" />
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs12" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label18" runat="server" Text="Note Finale:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_NoteFin" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_Obs13" runat="server"></asp:TextBox>
                </td>
            </tr>

        </table>
        <table class="style1">
            <tr>
                <td>
                    <asp:Label ID="Label19" runat="server" 
                        Text="Appréciation globale sur le stagiare:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_AGSS" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label20" runat="server" Text="Fait à :"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="TextBox_ville" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <asp:Button ID="Button_Insere" runat="server" Text="Insere le document Word" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button_remplireWord" runat="server" 
            Text="Obtenir le document Word" />
        <br />
        <br />
    
    </div>
    </asp:Content>
