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
    public partial class Jour_Feries : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["DirecteurConnecter"] == null)
            {
                Response.Redirect("~/Forms/Connexion.aspx");

            }
        }

        protected void Button_Ajouter_Click(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from JoursFeries", Chaines.ConnectionDirecteur);
            adapter.Fill(dt);

            bool flag = true;

            foreach (DataRow item in dt.Rows)
            {

                if (TextBox_Date.Text == item[1].ToString() && TextBox_DateFin.Text == item[2].ToString() && TextBox_Fete.Text == item[4].ToString())
                {
                    Response.Write("<script> alert('Cette fete existe deja!') </script>");

                    flag = false;
                    break;

                }


            }
            
            
            if (flag)
            {


                SqlCommand command = new SqlCommand();
                command.Connection = Chaines.ConnectionDirecteur;
                Chaines.ConnectionDirecteur.Open();
                command.CommandText = string.Format(@"insert into JoursFeries values ('{0}', '{1}', '{2}', {3})", TextBox_Date.Text ,TextBox_DateFin.Text, TextBox_Fete.Text, TextBox_NbrJour.Text);

                command.ExecuteNonQuery();


                Chaines.ConnectionDirecteur.Close();

                GridView_JourFeries.DataBind();
            }
        }

        protected void ImageButton_Suppression_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton_Modification_Click(object sender, ImageClickEventArgs e)
        {

        }
    }
}