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
            //Response.Write("salam");
        }

        protected void Button_SeConnecter_Click(object sender, EventArgs e)
        {
            #region A décommenter

            Compte compte = ComptesManager.Existe(TextBox_Login.Text, TextBox_MotDePasse.Text);

            if (compte != null)
            {
                Session["compte"] = compte;

                if (compte is e_FormaPro_v2._0.Classes.Directeur)
                {
                    Session["DirecteurConnecter"] = TextBox_Login.Text;
                    Response.Redirect("~/Forms/Directeur/Accueil.aspx");
                }
                    
                //    else if (compte is Surveillant)
                //        Response.Redirect("~/Forms/Surveillant/Accueil.aspx");
                //    else if (compte is Formateur)
                //        Response.Redirect("~/Forms/Formateur/Accueil.aspx");
                //    else if (compte is Stagiaire)
                //        Response.Redirect("~/Forms/Stagiaire/Accueil.aspx");
                //} 

                #endregion





                Session["login"] = TextBox_Login.Text;
                Session["password"] = TextBox_MotDePasse.Text;
            }
        }
    }
}