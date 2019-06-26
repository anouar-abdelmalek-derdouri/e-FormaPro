<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Directeur/Master Page_Directeur.Master" AutoEventWireup="true" CodeBehind="GestionFormateurs.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Directeur.Gestion_des_formateurs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1
        {
            width: 202px;
            height: 26px;
        }
        .style2
        {
            width: 308px;
            height: 26px;
        }
        .style3
        {
            height: 32px;
            width: 308px;
        }
        .style4
        {
            height: 24px;
            width: 308px;
        }
        .style5
        {
            height: 60px;
            width: 308px;
        }
        .style9
        {
            height: 27px;
            width: 308px;
        }
        .style14
        {
            height: 27px;
            width: 159px;
        }
        .style24
        {
            height: 43px;
            width: 140px;
        }
        .style27
        {
            width: 202px;
            height: 60px;
        }
        .style31
        {
            width: 202px;
            height: 43px;
        }
        .style32
        {
            height: 43px;
            width: 308px;
        }
        .style33
        {
            height: 43px;
            width: 159px;
        }
        .style34
        {
            width: 202px;
            height: 42px;
        }
        .style35
        {
            height: 42px;
            width: 308px;
        }
        .style36
        {
            height: 42px;
            width: 159px;
        }
        .style37
        {
            height: 42px;
            width: 140px;
        }
        .style38
        {
            width: 202px;
            height: 27px;
        }
        .style39
        {
            width: 202px;
            height: 39px;
        }
        .style40
        {
            height: 39px;
        }
        .style42
        {
            height: 39px;
            width: 140px;
        }
        .style43
        {
            height: 39px;
            width: 159px;
        }
        .style44
        {
            width: 202px;
            height: 41px;
        }
        .style45
        {
            height: 41px;
            width: 308px;
        }
        .style46
        {
            height: 41px;
            width: 159px;
        }
        .style47
        {
            height: 44px;
        }
        .style48
        {
            height: 44px;
            width: 159px;
        }
        .style49
        {
            height: 32px;
            width: 202px;
        }
        .style50
        {
            height: 24px;
            width: 202px;
        }
        .style51
        {
            height: 44px;
            width: 202px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder_main" runat="server">


    <table style="width:100%;">
        <tr>
            <td class="style49">
                </td>
            <td class="style3">
                <asp:RadioButton ID="RadioButton_permanant" runat="server" Text="Permanant" 
                    GroupName="k" Checked="True" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RadioButton ID="RadioButton_vacataire" runat="server" Text="Vacataire" 
                    GroupName="k" />
            </td>
        </tr>
        <tr>
            <td class="style50">
                </td>
            <td class="style4">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style1">
                <asp:Label ID="Label1" runat="server" Text="Matricule/CIN :"></asp:Label>
            </td>
            <td class="style2">
                <asp:TextBox ID="TextBox_matricule" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox_matricule" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style27">
                <asp:Label ID="Label2" runat="server" Text="Filiére : "></asp:Label>
            </td>
            <td class="style5">
                <asp:DropDownList ID="DropDownList_fieliere" runat="server" 
                    DataSourceID="SqlDataSource1" DataTextField="Nom" DataValueField="id_Filiere" 
                    Height="20px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:Espace_pédagogique2ConnectionString2 %>" 
                    SelectCommand="SELECT * FROM [Filieres]"></asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td class="style31">
                <asp:Label ID="Label3" runat="server" Text="Nom :"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox_nom" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox_nom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style33">
                <asp:Label ID="Label4" runat="server" Text="Prénom :"></asp:Label>
            </td>
            <td class="style24">
                <asp:TextBox ID="TextBox_prenom" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox_prenom" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style34">
                <asp:Label ID="Label5" runat="server" Text="Tele :"></asp:Label>
            </td>
            <td class="style35">
                <asp:TextBox ID="TextBox_tele" runat="server" 
                    ontextchanged="TextBox_tele_TextChanged"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox_tele" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            <td class="style36">
                <asp:Label ID="Label6" runat="server">Addresse :</asp:Label>
            </td>
             <td class="style37">
                <asp:TextBox ID="TextBox_address" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                     ControlToValidate="TextBox_address" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style44">
                </td>
            <td class="style45">
                <asp:Label ID="Label7" runat="server" Text="Date de Naissance :"></asp:Label>
               
               
            </td>
            <td class="style46">
                <asp:TextBox ID="TextBox_date" runat="server" TextMode="Date"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox_date" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
               
                
                <br />
            </td>
        </tr>
        <tr>
        <td class="style51">

            </td>

        <td class="style47">

         <asp:Label ID="Label10" runat="server" Text="Date de Embauch :"></asp:Label>
        <td class="style48">
         <asp:TextBox ID="TextBox_dateembauch" runat="server" TextMode="Date"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox_dateembauch" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
        
        </td>
        </tr>
        <tr>
            <td class="style38">
                </td>
            <td class="style9">
                <asp:Label ID="Label8" runat="server" Text="Email :"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox_emeil" runat="server" TextMode="Email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox_emeil" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style39">
                </td>
                <td class="style40">
                <asp:Label ID="Label9" runat="server" Text="MotdePass :"></asp:Label>
            </td>
            <td class="style43">
                <asp:TextBox ID="TextBox_motdepass" runat="server"></asp:TextBox>
            </td>
            <td class="style42">
                </td>
        </tr>
        <tr>
        <td>

        </td>
        <td>

            &nbsp;</td>
            <td colspan="2" style="width: 155px; height: 23px;">
                <asp:Button ID="Button_Ajouter" runat="server" Text="Ajouter" Width="188px" 
                    onclick="Button_Ajouter_Click" />
                </td>
          
        </tr>
        <tr>
            <td >
                &nbsp;</td>
                <td>
                
                
                </td>
                <td>
                
                
                
                </td>
                <td>
                
                </td>
        </tr>
        
        <tr>
            <td >
                &nbsp;</td>
                <td>
                
                
                    &nbsp;</td>
                <td>
                
                
                
                    <asp:HyperLink ID="HyperLink1" runat="server" 
                        NavigateUrl="listedesformateur.aspx">Liste des Formateurs</asp:HyperLink>
                
                
                
                </td>
                <td>
                
                    &nbsp;</td>
        </tr>
        
        <tr>
            <td >
                &nbsp;</td>
                <td>
                
                
                    &nbsp;</td>
                <td>
                
                
                
                    &nbsp;</td>
                <td>
                
                    &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>
