using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_FormaPro_v2._0.Classes;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class ProfileDericteur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //hadi khasha session
            if (!IsPostBack)
            {
                if (Session["Compte"] == null)
                    Response.Redirect("Connexion.aspx");
                else 
                {
                    e_FormaPro_v2._0.Classes.Directeur directeur = Session["DirecteurConnecter"] as e_FormaPro_v2._0.Classes.Directeur;

                    Label_Matricule.Text = directeur._Matricule ;
                    Label_Nom.Text = directeur.Nom;
                    Label_Prenom.Text = directeur.Prénom;
                }
            }
        }
    }
}