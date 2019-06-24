<%@ Page Title="Publication" Language="C#" MasterPageFile="~/Forms/Club/Site1.Master" AutoEventWireup="false"
    CodeBehind="~/Forms/Club/Publication.aspx.cs" Inherits="Projet.Publication" %>

<asp:Content ID="HeaderContentPublication" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContentPublication" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        Publications :
    </h2>
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
                                (description)(description)(description)(description)</p>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>
                                <linkbutton>Telecharger le fichier(PDF ou Video)</linkbutton>
                            </h3>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:ListView>
    </p>
</asp:Content>
