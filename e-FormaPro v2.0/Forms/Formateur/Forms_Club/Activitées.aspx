<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true"
    CodeBehind="Activitées.aspx.cs" Inherits="Projet.Activitées" %>

<asp:Content ID="HContentActivitées" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="BContentActivitées" ContentPlaceHolderID="MainContent" runat="server">
    <h3>
        Ajouter un Activitée :</h3>
    <br />
    <table>
        <tr>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
            <td>
                <asp:Button ID="Buttonup" runat="server" Text="Upload" />
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label6" runat="server" Text="Le responsable :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="Un compte rendu sur l’activité :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    
    <table>
    <tr>
    <td>
    <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/icons/chevron_left_48px.png" />
    </td>
   <td>
    
            <asp:Image ID="Image2" runat="server" Height="288px" Width="769px" />

    </td>
    <td>
    <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/icons/chevron_right_48px.png" onclick="ImageButton1_Click" />
    </td>
    </tr>
    </table>
</asp:Content>
