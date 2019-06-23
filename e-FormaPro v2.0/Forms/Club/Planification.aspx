<%@ Page Title="Planification" Language="C#" MasterPageFile="~/Forms/Club/Site1.Master" AutoEventWireup="false"
    CodeBehind="~/Forms/Club/Planification.aspx.cs" Inherits="Projet.Planification" %>

<asp:Content ID="HeaderContentPlanification" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContentPlanification" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Planification
    </h2>
    <asp:Button ID="Button1" runat="server" 
        Text="Voire les Activitées correspondante >>" onclick="Button1_Click" />
    <asp:FileUpload ID="FileUpload_Pub" runat="server" />
    <asp:Button ID="Button_upload" runat="server" Text="Upload" />
    <table>
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Votre nom :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxNom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Votre prenom :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxPrenom" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Description :"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBoxdescription" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
    <br />
    <br />

   
    <br />
    <p>
        <asp:ListView ID="ListViewpub" runat="server">
            <ItemTemplate>
                <table style="float: left">
                    <tr>
                        <td>
                            <asp:Image ID="img" Width="150px" Height="150px" ImageUrl="~/images/1.jpg" runat="server" />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h1>
                                (responsable)</h1>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <p>
                                (description)</p>
                        </td>
                    </tr>
                    <tr>
                        <%--<td>
                            
                                <linkbutton>Voire les Activitées correspondante >></linkbutton>
                            
                        </td>--%>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView>
    </p>
</asp:Content>
