using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using System.Data;
using System.Web;
using e_FormaPro_v2._0.Classes.Class_Club;

namespace e_FormaPro_v2._0.Managers.Manager_Club
{
    class StagiaireManager
    {
        public static SqlDataAdapter sda = new SqlDataAdapter(@"select	* from	Stagiaires", Global._Connection);


        public static DataTable Stagiaires()
        {
            new SqlCommandBuilder(sda);

            if (Global.Dataset.Tables["Stagiaires"] == null)
            {
                sda.Fill(Global.Dataset, "Stagiaires");
            }
            return Global.Dataset.Tables["Stagiaires"];
        }
    }
}
