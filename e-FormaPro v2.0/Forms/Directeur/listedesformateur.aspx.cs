using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
        }

       

       

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            SqlCommand command = new SqlCommand();
            command.Connection = Connection;
            command.CommandText = string.Format(@"exec Q21 {0}", GridView1.SelectedValue);
            // command.Parameters.Add(new SqlParameter("@num_domaine", domaine.numéro));

            Connection.Open();
            command.ExecuteNonQuery();
            Connection.Close();
       
        }

      

        protected void LinkButton1_Click3(object sender, EventArgs e)
        {
            LinkButton button = sender as LinkButton;
            int indice = 0;//Convert.ToInt32(button.CommandArgument);
            string
        Nom = GridView1.Rows[indice].Cells[1].Text,
        Prenom = GridView1.Rows[indice].Cells[2].Text,
        DatEmbauche = GridView1.Rows[indice].Cells[3].Text,
        Type_Formateur = GridView1.Rows[indice].Cells[4].Text,
        DateNaissance = GridView1.Rows[indice].Cells[5].Text,
        Telephone = GridView1.Rows[indice].Cells[6].Text,
          Email = GridView1.Rows[indice].Cells[7].Text,
        MotDePasse = GridView1.Rows[indice].Cells[8].Text,
        Addresse = GridView1.Rows[indice].Cells[9].Text,
        Filiere = GridView1.Rows[indice].Cells[10].Text;


		 //  SqlDataSource1.UpdateParameters["Matricule"].DefaultValue = ;
            SqlDataSource1.UpdateParameters["Nom"].DefaultValue = Nom;
            SqlDataSource1.UpdateParameters["DatEmbauche"].DefaultValue = Prenom;
            SqlDataSource1.UpdateParameters["Type_Formateur"].DefaultValue = DatEmbauche;
            SqlDataSource1.UpdateParameters["DateNaissance"].DefaultValue = Type_Formateur;
            SqlDataSource1.UpdateParameters["Telephone"].DefaultValue = DateNaissance;
            SqlDataSource1.UpdateParameters["Email"].DefaultValue = Telephone;
            SqlDataSource1.UpdateParameters["MotDePasse"].DefaultValue = Email;
            SqlDataSource1.UpdateParameters["Addresse"].DefaultValue = MotDePasse;
          //  SqlDataSource1.UpdateParameters["Filiere"].DefaultValue = Filiere;

            SqlDataSource1.Update();
            //GridView1.EditIndex = -1;
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click3(object sender, EventArgs e)
        {
           /* LinkButton button = sender as LinkButton;
            int indice = ;Convert.ToInt32(button.CommandArgument);
            string
                Nom = GridView1.Rows[indice].Cells[1].Text,
               Prenom = GridView1.Rows[indice].Cells[2].Text,
               DatEmbauche = GridView1.Rows[indice].Cells[3].Text,
                Type_Formateur = GridView1.Rows[indice].Cells[4].Text,
               DateNaissance = GridView1.Rows[indice].Cells[5].Text,
                 Telephone = GridView1.Rows[indice].Cells[6].Text,
                  Email = GridView1.Rows[indice].Cells[7].Text,
                MotDePasse = GridView1.Rows[indice].Cells[8].Text,
                  Addresse = GridView1.Rows[indice].Cells[9].Text,
                  Filiere = GridView1.Rows[indice].Cells[10].Text;


            //  SqlDataSource1.UpdateParameters["Matricule"].DefaultValue = ;
            SqlDataSource1.UpdateParameters["Nom"].DefaultValue = Nom;
            SqlDataSource1.UpdateParameters["DatEmbauche"].DefaultValue = Prenom;
            SqlDataSource1.UpdateParameters["Type_Formateur"].DefaultValue = DatEmbauche;
            SqlDataSource1.UpdateParameters["DateNaissance"].DefaultValue = Type_Formateur;
            SqlDataSource1.UpdateParameters["Telephone"].DefaultValue = DateNaissance;
            SqlDataSource1.UpdateParameters["Email"].DefaultValue = Telephone;
            SqlDataSource1.UpdateParameters["MotDePasse"].DefaultValue = Email;
            SqlDataSource1.UpdateParameters["Addresse"].DefaultValue = MotDePasse;
            //  SqlDataSource1.UpdateParameters["Filiere"].DefaultValue = Filiere;

            SqlDataSource1.Update();
            GridView1.EditIndex = -1;*/
        }

        protected void LinkButton11_Click2(object sender, EventArgs e)
        {

        }
    }
}