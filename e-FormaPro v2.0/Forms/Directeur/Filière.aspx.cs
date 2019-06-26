using e_FormaPro_v2._0.Utilitaires;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Filière : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DirecteurConnecter"] == null)
            {
                Response.Redirect("~/Forms/Connexion.aspx");

            }
        }

        protected void _Ajouter_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from Filieres", Chaines.ConnectionDirecteur);
            adapter.Fill(dt);

            bool flag = true;

            foreach (DataRow item in dt.Rows)
            {

                if (TextBox_Filiere.Text == item[1].ToString() && DropDownList_Formation.Text == item[3].ToString())
                {
                    Response.Write("<script> alert('Cette filiere existe deja!') </script>");

                    flag = false;
                    break;

                }


            }
            if (TextBox_Filiere.Text == string.Empty || TextBox_Libelle.Text == string.Empty)
            {
                Response.Write("<script> alert('Inserez des donnees valides stp!') </script>");
                flag = false;
            }
            if (flag)
            {


                SqlCommand command = new SqlCommand();
                command.Connection = Chaines.ConnectionDirecteur;
                Chaines.ConnectionDirecteur.Open();
                command.CommandText = string.Format(@"insert into Filieres values ('{0}', '{1}', {2})", TextBox_Filiere.Text, TextBox_Libelle.Text, DropDownList_Formation.Text);

                command.ExecuteNonQuery();


                Chaines.ConnectionDirecteur.Close();

                GridView_Filiere.DataBind();
            }
        }
    }
    }
