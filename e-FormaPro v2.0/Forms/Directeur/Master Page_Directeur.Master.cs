using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Master_Page_Directeur : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            getUrlNam();
        }

        protected void ImageButton_Déconnexion_Click(object sender, ImageClickEventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/Forms/Connexion.aspx");
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
            imgPicture_master.ImageUrl = urlname;
        }
    }
}