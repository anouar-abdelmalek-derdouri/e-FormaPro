using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.UI.HtmlControls;

namespace e_FormaPro_v2._0.Forms
{
    public partial class Master_page : System.Web.UI.MasterPage
    {
        public string ProfilDuCompte
        {
            set { LinkButton_ProfilDuCompte.Text = value; }
        }

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