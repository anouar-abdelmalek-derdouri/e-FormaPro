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
                            <asp:Label ID="Label1" runat="server" Text="Formateur:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="28px" Width="173px">
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 39px" align="center">
                            <asp:Label ID="Label2" runat="server" Text="Date:"></asp:Label>
                            <br />
                            <asp:TextBox   ID="TextBox_Date" runat="server" TextMode="Date" Width="166px"></asp:TextBox>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 43px" align="center">
                            <asp:Label ID="Label3" runat="server" Text="Nombre d'heure:"></asp:Label>
                            <br />
                            <asp:DropDownList ID="DropDownList_NombreDHeurs" runat="server" Height="23px" Width="75px">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 48px" align="center">
                            <asp:Label ID="Label4" runat="server" Text="Motifs"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox_Montifs" runat="server" Height="58px" TextMode="MultiLine" Width="171px"></asp:TextBox>
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 48px" align="center">
                            <asp:Button ID="Button_Ajouter" class="btn btn-primary" runat="server" Text="Ajouter" Width="117px" Height="38px" />
                        </td>
                    </tr>
                    <tr>
                        <td style="height: 48px;  width : 80%" align="center">
                <asp:GridView ID="GridView1" runat="server" Width="663px">
                </asp:GridView>


                        </td>
                    </tr>
                </table>


            </td>

        </tr>

    </table>

</asp:Content>
