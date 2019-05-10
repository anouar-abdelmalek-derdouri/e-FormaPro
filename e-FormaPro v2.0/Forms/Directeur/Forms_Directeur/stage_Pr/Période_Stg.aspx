<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="Période_Stg.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur.stage_Pr.Période_Stg" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">

    <style type="text/css">
        .style1
        {
            text-align: center;
        }
        #Calendar1 ,#Label1,#Calendar2,
        #Calendar3 ,#Label2,#Calendar4
        {
            display:inline-block;
           
        }
        #Button1
        {
            width: 143px;
        }
        .auto-style1 {
            width: 100%;
        }
        .auto-style11 {
            width: 244px;
        }
        .auto-style12 {
            width: 298px;
        }
    </style>

    <div class="style1">
    
        <br />
&nbsp;Durée&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>45</asp:ListItem>
            <asp:ListItem>20</asp:ListItem>
            <asp:ListItem>30</asp:ListItem>
            <asp:ListItem>40</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
&nbsp;Jours&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Modifier automatique" />
        <br />
        Nombre des Période
        <asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="52px">
            <asp:ListItem>2</asp:ListItem>
        </asp:DropDownList>
        <br />
        <hr />
        <div class="style1" id="Button_EnregPrdi">
            <br />
            <div id="pr1">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>
            <br />
            <table class="auto-style1">
                <tr>
                    <td class="auto-style11">&nbsp;</td>
                    <td class="auto-style12">Date Début</td>
                    <td>Date Fin</td>
                </tr>
                <tr>
                    <td class="auto-style11">Période N° 1</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox_DatedebutN1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_DateFinN1" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style11">Période N° 2</td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBox_DatedebutN2" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox_DateFinN2" runat="server" TextMode="Date"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <br />
            <br />
            <input id="Button1" type="button" value="Enregestrer" onclick="return Button1_onclick()" /><br />
            <br />
            <br />
        </div>
    
    </div>
</asp:Content>
