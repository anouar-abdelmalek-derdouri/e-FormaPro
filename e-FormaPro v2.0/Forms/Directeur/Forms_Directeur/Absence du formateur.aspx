<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Absence du formateur.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.Absence_du_formateur" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

   &nbsp;<table style="width:100%;">
        <tr>
            <td>


                <table style="width:100%;">
                    <tr>
                        <td style="width: 108px; height: 45px;">
                            <asp:Label ID="Label1" runat="server" Text="Formateur:"></asp:Label>
                        </td>
                        <td style="height: 45px">
                            <asp:DropDownList ID="DropDownList_Formateur" runat="server" Height="28px" Width="173px">
                            </asp:DropDownList>
                        </td>
                        <td style="height: 45px"></td>
                    </tr>
                    <tr>
                        <td style="width: 108px; height: 39px;">
                            <asp:Label ID="Label2" runat="server" Text="Date:"></asp:Label>
                        </td>
                        <td style="height: 39px">
                            <asp:TextBox ID="TextBox_Date" runat="server" TextMode="Date" Width="166px"></asp:TextBox>
                        </td>
                        <td style="height: 39px"></td>
                    </tr>
                    <tr>
                        <td style="width: 108px; height: 43px;">
                            <asp:Label ID="Label3" runat="server" Text="Nombre d'heure:"></asp:Label>
                        </td>
                        <td style="height: 43px">
                            <asp:DropDownList ID="DropDownList_NombreDHeurs" runat="server">
                                <asp:ListItem>1</asp:ListItem>
                                <asp:ListItem>2</asp:ListItem>
                                <asp:ListItem>3</asp:ListItem>
                                <asp:ListItem>4</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td style="height: 43px"></td>
                    </tr>
                    <tr>
                        <td style="width: 108px; height: 48px;">
                            <asp:Label ID="Label4" runat="server" Text="Montifs"></asp:Label>
                        </td>
                        <td style="height: 48px">
                            <asp:TextBox ID="TextBox_Montifs" runat="server" Height="32px" TextMode="MultiLine"></asp:TextBox>
                        </td>
                        <td style="height: 48px"></td>
                    </tr>
                    <tr>
                        <td style="width: 108px; height: 48px;"></td>
                        <td style="height: 48px">
                            <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="115px" Height="31px" />
                        </td>
                        <td style="height: 48px"></td>
                    </tr>
                </table>
                <asp:GridView ID="GridView1" runat="server">
                </asp:GridView>
              

            </td>
           
        </tr>
       
    </table>
</asp:Content>
