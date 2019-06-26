using e_FormaPro_v2._0.Utilitaires;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Absence : System.Web.UI.Page
    {
        int index, index2;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Ajouter_Click(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Accepter_Click(object sender, ImageClickEventArgs e)
        {
            int id = Convert.ToInt32(GridView_Absence.Rows[index].Cells[0].Text);
                SqlCommand command = new SqlCommand();
                command.Connection = Chaines.ConnectionDirecteur;
                Chaines.ConnectionDirecteur.Open();
                command.CommandText = string.Format(@"UPDATE Demande_Absence_Formateur 
                                                      SET Demande_Absence_Formateur.Etat_Demande = 1 
                                                    where id_Demande_Absence_Formateur = {0} ", id );

                command.ExecuteNonQuery();


                Chaines.ConnectionDirecteur.Close();

                GridView_Absence.DataBind();
            GridView_Accepter.DataBind();
            GridView_Refuser.DataBind();

        }

        protected void GridView_Absence_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            
             index = Convert.ToInt32(e.Row.RowIndex);
        }

        protected void ImageButton_Refuser_Click(object sender, ImageClickEventArgs e)
        {
            int id = Convert.ToInt32(GridView_Absence.Rows[index].Cells[0].Text);
            SqlCommand command = new SqlCommand();
            command.Connection = Chaines.ConnectionDirecteur;
            Chaines.ConnectionDirecteur.Open();
            command.CommandText = string.Format(@"UPDATE Demande_Absence_Formateur 
                                                      SET Demande_Absence_Formateur.Etat_Demande = 2 
                                                    where id_Demande_Absence_Formateur = {0} ", id);

            command.ExecuteNonQuery();


            Chaines.ConnectionDirecteur.Close();

            GridView_Absence.DataBind();
            GridView_Accepter.DataBind();
            GridView_Refuser.DataBind();
        }

        protected void GridView_Refuser_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //index2 = Convert.ToInt32(e.Row.RowIndex);
        }

        protected void GridView_Absence_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Accepter_Click1(object sender, ImageClickEventArgs e)
        {
            //int id = Convert.ToInt32(GridView_Absence.Rows[index2].Cells[0].Text);
            //SqlCommand command = new SqlCommand();
            //command.Connection = Chaines.ConnectionDirecteur;
            //Chaines.ConnectionDirecteur.Open();
            //command.CommandText = string.Format(@"UPDATE Demande_Absence_Formateur 
            //                                          SET Demande_Absence_Formateur.Etat_Demande = 1 
            //                                        where id_Demande_Absence_Formateur = {0} ", id);

            //command.ExecuteNonQuery();


            //Chaines.ConnectionDirecteur.Close();

            //GridView_Accepter.DataBind();
            //GridView_Refuser.DataBind();
        }
    }
}