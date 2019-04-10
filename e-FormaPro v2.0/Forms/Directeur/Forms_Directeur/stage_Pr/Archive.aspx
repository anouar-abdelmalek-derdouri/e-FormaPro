<%@ Page Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Archive.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.stage_Pr" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">
    <div style="text-align: center">
    
        Forme Derectrice : Button Archive<br />
        <br />
        Annee&nbsp;&nbsp; :&nbsp; 
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>2001 / 2000</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:GridView ID="GridView1" runat="server" Width="788px">
            <Columns>
                <asp:ButtonField HeaderText="Code Source" Text="Télécherger" />
                <asp:ButtonField HeaderText="Rapport" Text="Télécherger" />
                <asp:ButtonField HeaderText="Présentation" Text="Télécherger" />
            </Columns>
        </asp:GridView>
        <br />
        <br />
        <br />
        <br />
    
    </div>
    </asp:Content>
    
