<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Absence.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Absence" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 45px; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <table style="width: 100%;">
        <tr>
            <td>


                <table style="width: 100%;">
                    <tr>
                        <td class="auto-style1" align="center">
                            <asp:Label ID="Label5" runat="server" Text="Absence"></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 45px" align="center">
                            <br />
                            <br />
                            <br />
                <asp:GridView ID="GridView_Absence" runat="server" Width="663px" AutoGenerateColumns="False" DataKeyNames="Id_Demande_Absence_Formateur" DataSourceID="SqlDataSource_Absence" OnRowDataBound="GridView_Absence_RowDataBound" OnSelectedIndexChanged="GridView_Absence_SelectedIndexChanged" ShowHeaderWhenEmpty="True">
                    <Columns>
                        <asp:BoundField DataField="Id_Demande_Absence_Formateur" HeaderText="Id_Demande_Absence_Formateur" InsertVisible="False" ReadOnly="True" SortExpression="Id_Demande_Absence_Formateur" />
                        <asp:BoundField DataField="Motif" HeaderText="Motif" SortExpression="Motif" />
                        <asp:BoundField DataField="DateD" HeaderText="DateD" SortExpression="DateD" />
                        <asp:BoundField DataField="DateF" HeaderText="DateF" SortExpression="DateF" />
                        <asp:BoundField DataField="Formateur" HeaderText="Formateur" SortExpression="Formateur" />
                        <asp:TemplateField HeaderText="Accepter">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Accepter" runat="server" ImageUrl="~/img/Directeur/checkmark_20px.png" OnClick="ImageButton_Accepter_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Refuser">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Refuser" runat="server" ImageUrl="~/img/Directeur/CloseWindow_20px.png" OnClick="ImageButton_Refuser_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>


                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 39px" align="center">
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource_Absence" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT Demande_Absence_Formateur.Id_Demande_Absence_Formateur, Demande_Absence_Formateur.Motif, Demande_Absence_Formateur.DateD, Demande_Absence_Formateur.DateF, Demande_Absence_Formateur.Etat_Demande, Formateurs.Nom + '  ' + Formateurs.Prenom AS Formateur FROM Demande_Absence_Formateur INNER JOIN Formateurs ON Demande_Absence_Formateur.Formateur = Formateurs.Matricule WHERE (Demande_Absence_Formateur.Etat_Demande = @Etat_Demande)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="3" Name="Etat_Demande" Type="Int32" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 43px" align="center">
                            Les demandes aceeptees<br />
                            <br />
                            <asp:GridView ID="GridView_Accepter" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Demande_Absence_Formateur" DataSourceID="SqlDataSource_Accepter" ShowHeaderWhenEmpty="True">
                                <Columns>
                                    <asp:BoundField DataField="Id_Demande_Absence_Formateur" HeaderText="Id_Demande_Absence_Formateur" InsertVisible="False" ReadOnly="True" SortExpression="Id_Demande_Absence_Formateur" />
                                    <asp:BoundField DataField="Motif" HeaderText="Motif" SortExpression="Motif" />
                                    <asp:BoundField DataField="DateD" HeaderText="DateD" SortExpression="DateD" />
                                    <asp:BoundField DataField="DateF" HeaderText="DateF" SortExpression="DateF" />
                                    <asp:BoundField DataField="Formateur" HeaderText="Formateur" ReadOnly="True" SortExpression="Formateur" />
                                </Columns>
                            </asp:GridView>
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource_Accepter" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT Demande_Absence_Formateur.Id_Demande_Absence_Formateur, Demande_Absence_Formateur.Motif, Demande_Absence_Formateur.DateD, Demande_Absence_Formateur.DateF, Demande_Absence_Formateur.Etat_Demande, Formateurs.Nom + '  ' + Formateurs.Prenom AS Formateur FROM Demande_Absence_Formateur INNER JOIN Formateurs ON Demande_Absence_Formateur.Formateur = Formateurs.Matricule WHERE (Demande_Absence_Formateur.Etat_Demande = @Etat_Demande)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="1" Name="Etat_Demande" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 48px" align="center">
                            Les demandes refusees<br />
                            <br />
                            <asp:GridView ID="GridView_Refuser" runat="server" AutoGenerateColumns="False" DataKeyNames="Id_Demande_Absence_Formateur" DataSourceID="SqlDataSource_Refuser" OnRowDataBound="GridView_Refuser_RowDataBound" ShowHeaderWhenEmpty="True">
                                <Columns>
                                    <asp:BoundField DataField="Id_Demande_Absence_Formateur" HeaderText="Id_Demande_Absence_Formateur" InsertVisible="False" ReadOnly="True" SortExpression="Id_Demande_Absence_Formateur" />
                                    <asp:BoundField DataField="Motif" HeaderText="Motif" SortExpression="Motif" />
                                    <asp:BoundField DataField="DateD" HeaderText="DateD" SortExpression="DateD" />
                                    <asp:BoundField DataField="DateF" HeaderText="DateF" SortExpression="DateF" />
                                    <asp:BoundField DataField="Formateur" HeaderText="Formateur" ReadOnly="True" SortExpression="Formateur" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource_Refuser" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT Demande_Absence_Formateur.Id_Demande_Absence_Formateur, Demande_Absence_Formateur.Motif, Demande_Absence_Formateur.DateD, Demande_Absence_Formateur.DateF, Demande_Absence_Formateur.Etat_Demande, Formateurs.Nom + '  ' + Formateurs.Prenom AS Formateur FROM Demande_Absence_Formateur INNER JOIN Formateurs ON Demande_Absence_Formateur.Formateur = Formateurs.Matricule WHERE (Demande_Absence_Formateur.Etat_Demande = @Etat_Demande)">
                                <SelectParameters>
                                    <asp:Parameter DefaultValue="2" Name="Etat_Demande" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 48px" align="center">
                            &nbsp;</td>
                    </tr>

                    <tr>
                        <td style="height: 48px;  width : 80%" align="center">
                            &nbsp;</td>
                    </tr>
                </table>


            </td>

        </tr>

    </table>

</asp:Content>
