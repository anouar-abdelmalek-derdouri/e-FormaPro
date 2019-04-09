using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Master_Page_Directeur : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Déconnexion_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Forms/Connexion.aspx");
        }
    }
}