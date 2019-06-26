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
                <asp:GridView ID="GridView_Absence" runat="server" Width="663px" AutoGenerateColumns="False" DataKeyNames="Id_Demande_Absence_Formateur" DataSourceID="SqlDataSource_Absence" OnRowDataBound="GridView_Absence_RowDataBound">
                    <Columns>
                        <asp:BoundField DataField="Id_Demande_Absence_Formateur" HeaderText="Id_Demande_Absence_Formateur" InsertVisible="False" ReadOnly="True" SortExpression="Id_Demande_Absence_Formateur" />
                        <asp:BoundField DataField="Motif" HeaderText="Motif" SortExpression="Motif" />
                        <asp:BoundField DataField="DateD" HeaderText="DateD" SortExpression="DateD" />
                        <asp:BoundField DataField="DateF" HeaderText="DateF" SortExpression="DateF" />
                        <asp:BoundField DataField="Formateur" HeaderText="Formateur" SortExpression="Formateur" />
                        <asp:BoundField DataField="Etat_Demande" HeaderText="Etat_Demande" SortExpression="Etat_Demande" />
                        <asp:TemplateField HeaderText="Accepter">
                            <ItemTemplate>
                                <asp:ImageButton ID="ImageButton_Accepter" runat="server" ImageUrl="~/img/Directeur/checkmark_20px.png" OnClick="ImageButton_Accepter_Click" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Refuser"></asp:TemplateField>
                    </Columns>
                </asp:GridView>


                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 39px" align="center">
                            <br />
                            <asp:SqlDataSource ID="SqlDataSource_Absence" runat="server" ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2FatiConnectionString %>" SelectCommand="SELECT * FROM [Demande_Absence_Formateur]"></asp:SqlDataSource>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 43px" align="center">
                            <br />
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 48px" align="center">
                            <br />
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
