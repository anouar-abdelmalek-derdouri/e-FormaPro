<%@ Page Title="" Language="C#" MasterPageFile="~/Forms/Master page.Master" AutoEventWireup="true"
    CodeBehind="Accueil.aspx.cs" Inherits="e_FormaPro_v2._0.Forms.Exemple.Accueil" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cph_Head" runat="server">
    <title>Espace EXEMPLE - Accueil</title>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cph_Titre" runat="server">
    Accueil
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cph_Contenu" runat="server">
    <p>
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt
        ut labore et dolore magna aliqua. Et netus et malesuada fames ac turpis egestas
        maecenas. Urna neque viverra justo nec ultrices dui sapien eget mi. Pulvinar elementum
        integer enim neque volutpat ac tincidunt vitae semper. Egestas pretium aenean pharetra
        magna ac placerat vestibulum lectus. Libero id faucibus nisl tincidunt eget nullam
        non nisi est. Fermentum et sollicitudin ac orci phasellus egestas tellus. Nec nam
        aliquam sem et tortor consequat id porta nibh. Commodo odio aenean sed adipiscing.
        Lobortis feugiat vivamus at augue eget arcu dictum varius duis. Vitae tempus quam
        pellentesque nec nam aliquam. Vel elit scelerisque mauris pellentesque pulvinar
        pellentesque. Tellus at urna condimentum mattis pellentesque id nibh. Sit amet nisl
        suscipit adipiscing bibendum. Eget aliquet nibh praesent tristique magna sit amet
        purus. Diam phasellus vestibulum lorem sed risus. Congue nisi vitae suscipit tellus
        mauris a diam maecenas sed. Proin fermentum leo vel orci porta. Non curabitur gravida
        arcu ac tortor dignissim convallis aenean. Nunc mattis enim ut tellus elementum.
        Cursus metus aliquam eleifend mi in nulla posuere sollicitudin aliquam. Laoreet
        sit amet cursus sit amet. Dignissim suspendisse in est ante in nibh mauris cursus.
        Velit ut tortor pretium viverra suspendisse. Tellus molestie nunc non blandit massa
        enim nec. Dignissim suspendisse in est ante in nibh mauris cursus mattis. Consectetur
        adipiscing elit duis tristique sollicitudin nibh sit amet. Consectetur adipiscing
        elit pellentesque habitant morbi tristique senectus. Faucibus in ornare quam viverra
        orci sagittis eu volutpat. Eget aliquet nibh praesent tristique magna sit amet purus.
        Vel quam elementum pulvinar etiam non quam. Consequat ac felis donec et odio pellentesque
        diam volutpat. Ultrices in iaculis nunc sed augue lacus viverra vitae. Aliquam sem
        et tortor consequat id porta nibh venenatis. Sed id semper risus in hendrerit gravida
        rutrum. Id ornare arcu odio ut sem nulla pharetra diam. Neque egestas congue quisque
        egestas diam in arcu cursus euismod. Purus in mollis nunc sed id semper risus in
        hendrerit. Enim ut tellus elementum sagittis vitae et. Et ligula ullamcorper malesuada
        proin libero nunc. Vestibulum lectus mauris ultrices eros in cursus.
    </p>
    <asp:Button ID="ClientButton" runat="server" Text="Launch Modal Popup (Client)" />
    <asp:Button ID="ServerButton" runat="server" Text="Launch Modal Popup (Server)" OnClick="ServerButton_Click" />
    <asp:Panel ID="ModalPanel" runat="server" Width="500px">
        ASP.NET AJAX is a free framework for quickly creating a new generation of more efficient,
        more interactive and highly-personalized Web experiences that work across all the
        most popular browsers.<br />
        <asp:Button ID="OKButton" runat="server" Text="Close" />
    </asp:Panel>
    <ajaxtoolkit:modalpopupextender id="mpe" runat="server" targetcontrolid="ClientButton"
        popupcontrolid="ModalPanel" okcontrolid="OKButton" />
    <asp:ScriptManager ID="asm" runat="server" />
    <script runat="server">
        protected void ServerButton_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "key", "launchModal();", true);
        }
    </script>
    <script type="text/javascript">
        var launch = false;
        function launchModal() {
            launch = true;
        }
        function pageLoad() {
            if (launch) {
                $find("mpe").show();
            }
        }
    </script>
</asp:Content>
