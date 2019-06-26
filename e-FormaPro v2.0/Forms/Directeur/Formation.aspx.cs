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
	public partial class Formation : System.Web.UI.Page
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
            SqlDataAdapter adapter = new SqlDataAdapter("Select * from Formations", Chaines.ConnectionDirecteur);
            adapter.Fill(dt);

            bool flag = true;

            foreach (DataRow item in dt.Rows)
            {

                if (TextBox_Formation.Text == item[1].ToString())
                {
                    Response.Write("<script> alert('Ce nom existe deja!') </script>");
                    
                    TextBox_Formation.Text = string.Empty;
                    flag = false;
                    break;

                }
                

            }
            if (TextBox_Abreviation.Text == string.Empty || TextBox_Formation.Text == string.Empty)
            {
                Response.Write("<script> alert('Inserez des donnees valides stp!') </script>");
                flag = false;
            }
            if (flag)
            {


                SqlCommand command = new SqlCommand();
                command.Connection = Chaines.ConnectionDirecteur;
                Chaines.ConnectionDirecteur.Open();
                command.CommandText = string.Format(@"insert into Formations values ('{0}', '{1}')", TextBox_Formation.Text, TextBox_Abreviation.Text);

                command.ExecuteNonQuery();


                Chaines.ConnectionDirecteur.Close();

                GridView_Formation.DataBind();
            }
        }

        protected void ImageButton_Suppression_Click(object sender, ImageClickEventArgs e)
        {
            //Response.Write("<script> alert('Voulez vous vraiment supprimer?!') </script>");

            //SqlCommand command = new SqlCommand();
            //command.Connection = Chaines.ConnectionDirecteur;
            //command.CommandText = string.Format(@"exec DeleteFormation {0}", value);
            //// command.Parameters.Add(new SqlParameter("@num_domaine", domaine.numéro));

            //Chaines.ConnectionDirecteur.Open();
            //command.ExecuteNonQuery();
            //Chaines.ConnectionDirecteur.Close();


        }

        protected void GridView_Formation_RowDataBound(object sender, GridViewRowEventArgs e)
        {
           
        }

        protected void GridView_Formation_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
           // Response.Write("<script> confirm('Voulez vous vraiment supprimer?!') </script>"); => It's in the source code
            int value = Convert.ToInt32(GridView_Formation.Rows[e.RowIndex].Cells[0].Text);

            
            SqlCommand command = new SqlCommand();
            command.Connection = Chaines.ConnectionDirecteur;
            command.CommandText = string.Format(@"exec dbo.DeleteFormation {0}", value);
            Chaines.ConnectionDirecteur.Open();
            command.ExecuteNonQuery();
            Chaines.ConnectionDirecteur.Close();
        }
    }
}