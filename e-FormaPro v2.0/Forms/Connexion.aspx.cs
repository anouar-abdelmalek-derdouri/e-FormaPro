using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_FormaPro_v2._0.Managers;
using e_FormaPro_v2._0.Classes;

namespace e_FormaPro_v2._0.Forms
{
    public partial class Connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_SeConnecter_Click(object sender, EventArgs e)
        {
            #region A décommenter

            //Compte compte = ComptesManager.Existe(TextBox_Login.Text, TextBox_MotDePasse.Text);

            //if (compte != null)
            //{
            //    Session["compte"] = compte;

            //    if (compte is Directeur)
            //        Response.Redirect("~/Forms/Directeur/Accueil.aspx");
            //    else if (compte is Surveillant)
            //        Response.Redirect("~/Forms/Surveillant/Accueil.aspx");
            //    else if (compte is Formateur)
            //        Response.Redirect("~/Forms/Formateur/Accueil.aspx");
            //    else if (compte is Stagiaire)
            //        Response.Redirect("~/Forms/Stagiaire/Accueil.aspx");
            //} 

            #endregion

#warning A supprimer : Juste pour la démonstration
            Session["compte"] = new Stagiaire() { Login = "120319990002", MotDePasse = "azerty", Nom = "alaoui", Prénom = "hassan" };
            Response.Redirect("~/Forms/Exemple/Accueil.aspx");
        }
    }
}