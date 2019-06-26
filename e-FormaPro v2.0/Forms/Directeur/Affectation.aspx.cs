using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Affectation : System.Web.UI.Page
    {
        SqlConnection Connection = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void _Ajouter_Click(object sender, EventArgs e)
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Connection;
            command.CommandText = string.Format(@"insert  into AffectationFormateursModule Values('{0}',{1},{2},{3})", DropDownList_Formateur.Text, Convert.ToInt32(DropDownList_Groupe.SelectedValue), Convert.ToInt32(DropDownList_Module.SelectedValue), Convert.ToInt32(DropDownList_sem.SelectedValue));
            // command.Parameters.Add(new SqlParameter("@num_domaine", domaine.numéro));

            Connection.Open();
            command.ExecuteNonQuery();
            Connection.Close();
        }

        protected void Aff_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}