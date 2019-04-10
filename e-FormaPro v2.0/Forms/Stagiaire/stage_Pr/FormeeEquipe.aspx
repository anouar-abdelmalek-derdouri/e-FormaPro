<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="FormeeEquipe.aspx.cs" 
Inherits="e_FormaPro_v2._0.Forms.Stagiaire.stage_Pr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <div style="text-align: center">
    
        Forme Stagiaire : Boutton&nbsp;Former Equipe
        <br />
        <br />
        Ajouter Encadre + Entreprise
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server">HyperLink1 Vers Page Ajouter Encadre  + Entreprise</asp:HyperLink>
        <br />
        Choisir les member<br />
        <asp:GridView ID="GridView2" runat="server" Width="792px">
            <Columns>
                <asp:CheckBoxField DataField="les Member" HeaderText="Les members" 
                    SortExpression="les Member" />
            </Columns>
        </asp:GridView>
    
        <br />
        <br />
        <asp:Button ID="Button_Enregestre" runat="server" Text="Enregestre" 
            Width="232px" />
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </asp:Content>
