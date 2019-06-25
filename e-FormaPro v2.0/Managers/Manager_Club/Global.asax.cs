using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Data;
using System.Data.SqlClient;

namespace e_FormaPro_v2._0.Managers.Manager_Club
{
    public class Global : System.Web.HttpApplication
    {
        public static SqlConnection _Connection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Club;Integrated Security=True");
        public static DataSet Dataset = new DataSet();
        public static DataView _DataView = new DataView();

        public static SqlCommand _Command = new SqlCommand();

        public static string variable = "";
        public static string president = "";
        public static string variableNomClub = "";
        public static string variableSujet = "";
        public static string variableAccée = "";
        public static string variableParti = "";
        public static string variableRégles = "";
        protected void Application_Start(object sender, EventArgs e)
        {

        }

        protected void Session_Start(object sender, EventArgs e)
        {

        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}