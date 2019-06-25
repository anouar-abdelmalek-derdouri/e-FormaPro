<%@ Page Title="Accueil" Language="C#" MasterPageFile="~/Forms/Club/Site1.Master" AutoEventWireup="false"
    CodeBehind="~/Forms/Club/defaultpage.aspx.cs" Inherits="Projet.defaultpage" %>

<asp:Content ID="HeaderContentdefaultpage" runat="server" ContentPlaceHolderID="HeadContent">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
            font-family: Arial, Helvetica, sans-serif;
            color: #000000;
            font-weight: bold;
            top: 5px;
        }
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 93%;
            height: 242px;
        }
        .auto-style5 {
            height: 59px;
            width: 180px;
            text-align: center;
        }
        .auto-style4 {
            height: 29px;
            width: 12px;
            text-align: center;
        }
        .auto-style6 {
            height: 68px;
            width: 12px;
            text-align: center;
        }
        .auto-style9 {
            width: 12px;
            text-align: center;
            height: 35px;
        }
        .auto-style10 {
            font-family: "Segoe UI";
            color: #000000;
            font-size: large;
        }
        .auto-style11 {
            height: 59px;
            width: 12px;
            text-align: center;
            font-size: medium;
            font-family: Arial, Helvetica, sans-serif;
        }
        .auto-style12 {
            height: 29px;
            width: 180px;
            text-align: center;
        }
        .auto-style13 {
            height: 68px;
            width: 180px;
            text-align: center;
        }
        .auto-style14 {
            width: 180px;
            text-align: center;
            height: 35px;
        }
        </style>
</asp:Content>
<asp:Content ID="BodyContentdefaultpage" runat="server" ContentPlaceHolderID="MainContent">
    <br />
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <br />
            <table align="center" border="0" class="auto-style3" style="background-color: #E1E1E1">
                <tr>
                    <td class="auto-style11" style="background-color: #006064; color: #FFFFFF; ">NomClub:</td>
                    <td class="auto-style5" style="background-color: #006064; font-family: 'Arial Black'; color: #FFFFFF; font-size: large">
                        <asp:Label ID="NomClubLabel" runat="server" Text='<%# Eval("NomClub") %>' />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">Sujets: </td>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="SujetsLabel" runat="server" CssClass="auto-style10" Text='<%# Eval("Sujets") %>' />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style6">Régles:</td>
                    <td class="auto-style13"><strong>
                        <asp:Label ID="RéglesLabel" runat="server" CssClass="auto-style10" Text='<%# Eval("Régles") %>' />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style9">Président: </td>
                    <td class="auto-style14"><strong>
                        <asp:Label ID="PrésidentLabel" runat="server" CssClass="auto-style10" Text='<%# Eval("Président") %>' />
                        </strong></td>
                </tr>
               
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ClubConnectionString %>" SelectCommand="SELECT [NomClub], [Sujets], [Régles], [Président] FROM [Club] WHERE ([NomClub] = @NomClub)">
        <SelectParameters>
            <asp:QueryStringParameter Name="NomClub" QueryStringField="NomClub" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <br />
    <h2>
        Les demandes :
    </h2>
    <br />
    <asp:Panel ID="Panel1" runat="server" Visible="False">
         <asp:ImageButton ID="ImageButton_les_demende" runat="server"
                                            Height="66px" ImageUrl="~/img/icon_club/message_48px.png"
                                            Width="93px" OnClick="ImageButton_les_demende_Click" />
        <br />
        <span class="auto-style1">click ici pour voir votre demandes</span>
    </asp:Panel>
        
       

    <br />
    
    <h2>
        Les evennements
    </h2>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        
        <asp:Timer ID="Timer1" runat="server" Interval="2000" OnTick="Timer1_Tick">
            </asp:Timer>
            <asp:Image ID="Image1" runat="server" Height="200px" Width="800px" />
        
            
            <br />
            <div class="auto-style2">
            <asp:ImageButton ID="ImageButton_les_demende0" runat="server" Height="66px" ImageUrl="~/img/Icon_club/info_40px.png" OnClick="ImageButton_les_demende_Click" Width="93px" />
            <br />
            <span class="auto-style1">click ici pour plus informations</span>
        </div>
            
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
