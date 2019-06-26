using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using e_FormaPro_v2._0.Utilitaires,

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Les_salles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _Ajouter_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = Chaines.ConnectionDirecteur;

            cmd.CommandText = string.Format(@"select    *
                                              from      Salles
                                              where     Nom = '{0}' and Capacite = '{1}' and (Type = {2} or type = {3})",
                                              TextBox_Salle.Text, TextBox_Capacite.Text,
                                              RadioButton_Cours.Text,
                                              RadioButton_Atelier.Text);
            Chaines.ConnectionDirecteur.Open();
            cmd.ExecuteNonQuery();
            Chaines.ConnectionDirecteur.Close();
        }
    }
}