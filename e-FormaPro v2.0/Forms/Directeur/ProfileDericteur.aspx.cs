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
    public partial class ProfileDericteur : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //hadi khasha session
            //if (!IsPostBack)
            //{
            //    if (Session["type"] == null)
            //        Response.Redirect("Auth.aspx");
            //    else if (Session["type"].ToString() == "service")
            //    {
            //        mv.ActiveViewIndex = 1;
            //    }
            //}
            getUrlNam();

        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            string patern;

            FileUpload1.SaveAs(Server.MapPath("~/img/Directeur" + FileUpload1.FileName));

            patern = "~/img/Directeur" + FileUpload1.FileName;



            imgPicture.ImageUrl = patern;



            SqlConnection Connection = new SqlConnection(@"Data Source=DESKTOP-GQMK5Q9\SQLEXPRESS;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            SqlCommand command = new SqlCommand();

            string matricule = "M01";
            //    string papa = "aaaa";


            command.CommandText = string.Format(@"  update Directeurs set Urlname = '{0}'
                                                    where Matricule = '{1}' ", patern.ToString(), matricule);

            //cmd.Parameters.AddWithValue("@query_name", txt_query_name.Text);

            command.Connection = Connection;

            Connection.Open();
            command.ExecuteNonQuery();
            Connection.Close();

            //getUrlNam();
        }

        public void getUrlNam()
        {
            SqlConnection Connection = new SqlConnection(@"Data Source=DESKTOP-GQMK5Q9\SQLEXPRESS;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            SqlCommand command = new SqlCommand();

            string matricule = "M01";
            string urlname;

            command.CommandText = string.Format(@"select  Urlname from Directeurs
                                                  where Matricule = '{0}' ", matricule);



            command.Connection = Connection;

            Connection.Open();
            urlname = command.ExecuteScalar().ToString();
            Connection.Close();
            imgPicture.ImageUrl = urlname;
        }
    }
}