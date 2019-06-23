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
    class FormateurManager
    {
        public static SqlDataAdapter sda = new SqlDataAdapter(@"select	* from	Formateurs", Global._Connection);


        public static DataTable Formateurs()
        {
            new SqlCommandBuilder(sda);

            if (Global.Dataset.Tables["Formateurs"] == null)
            {
                sda.Fill(Global.Dataset, "Formateurs");
            }
            return Global.Dataset.Tables["Formateurs"];
        }
    }
}
