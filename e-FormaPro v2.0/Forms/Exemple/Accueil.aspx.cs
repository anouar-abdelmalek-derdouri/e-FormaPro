using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_FormaPro_v2._0.Classes;

namespace e_FormaPro_v2._0.Forms.Exemple
{
    public partial class Accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Compte compte = Session["compte"] as Compte;

            if (compte != null)
            {
                (Master as Master_page).ProfilDuCompte = compte.NomComplet;
            }
            else
            {
                Response.Redirect("");
            }
        }
    }
}