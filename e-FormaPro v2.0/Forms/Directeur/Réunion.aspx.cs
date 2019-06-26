using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class WebForm2 : System.Web.UI.Page
    {



        public void idmax()
        {
            int id;
            SqlConnection Connection = new SqlConnection(@"Data Source=DESKTOP-GQMK5Q9\SQLEXPRESS;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            SqlCommand command = new SqlCommand();

            command.CommandText = "select max(Id_Réunions) from Réunions";
            command.Connection = Connection;
            Connection.Open();
            id = (int)command.ExecuteScalar() + 1;
            Connection.Close();

            TextBox_Numero.Text = id.ToString();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            idmax();
        }

        protected void GridView_Reunion_RowDataBound(object sender, GridViewRowEventArgs e)
        {
        }

        protected void Button_Ajouter_Click(object sender, EventArgs e)
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=DESKTOP-GQMK5Q9\SQLEXPRESS;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            SqlCommand commandReunion = new SqlCommand();
            SqlCommand command_Participants = new SqlCommand();

            string objects = TextBox_Objectifs.Text,
                   date = TextBox_Date.Text,
                   heur = TextBox_Heure.Text + " " + DropDownList_MatinOrApres.Text;
            int duree = Convert.ToInt32(TextBox_Duree.Text);

            commandReunion.CommandText = string.Format("insert into Réunions Values('{0}', '{1}','{2}',{3})", objects, date, heur, duree);

            commandReunion.Connection = Connection;

            Connection.Open();
            commandReunion.ExecuteNonQuery();
            Connection.Close();

            for (int i = 0; i < ListBox_Participants.Items.Count; i++)
            {

                string formateur = ListBox_Participants.Items[i].ToString();
                string id_formateur = formateur.Split(new string[] { "," }, StringSplitOptions.None)[0];

                command_Participants.CommandText = string.Format("insert into Participants_Reunion values ({0}, '{1}')", TextBox_Numero.Text, id_formateur);

                command_Participants.Connection = Connection;

                Connection.Open();
                command_Participants.ExecuteNonQuery();
                Connection.Close();
            }

            //GridView_Reunion.DataSource = SqlDataSource_Reunion;
            //GridView_Reunion.ID = SqlDataSource_Reunion.ID;

        }

        protected void Button_Ajouter_Participent_Click(object sender, EventArgs e)
        {
            for (int i = 0; i < DropDownList_Participants.Items.Count; i++)
            {

                ListBox_Participants.Items.Add(DropDownList_Participants.Text);
                DropDownList_Participants.Items.Remove(DropDownList_Participants.Text);
                break;
            }


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            //SqlConnection Connection = new SqlConnection(@"Data Source=DESKTOP-GQMK5Q9\SQLEXPRESS;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            //SqlCommand command = new SqlCommand();



            //for (int i = 0; i < ListBox_Participants.Items.Count; i++)
            //{

            //    string formateur = ListBox_Participants.Items[i].ToString();
            //    string id_formateur =  formateur.Split(new string[] { "," },StringSplitOptions.None)[0];

            //    command.CommandText = string.Format("insert into Participants_Reunion values ({0}, '{1}')", 7, id_formateur);

            //    command.Connection = Connection;

            //    Connection.Open();
            //    command.ExecuteNonQuery();
            //    Connection.Close();
            //}


        }


    }
}