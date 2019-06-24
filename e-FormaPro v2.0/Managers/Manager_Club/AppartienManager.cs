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
    class AppartienManager
    {
        static SqlDataAdapter sda = new SqlDataAdapter(@"select	* from	Appartian", Global._Connection);
        
        public static DataTable Appartian()
        {
            new SqlCommandBuilder(sda);

            if (Global.Dataset.Tables["Appartian"] == null)
            {
                sda.Fill(Global.Dataset, "Appartian");
            }
            return Global.Dataset.Tables["Appartian"];
        }
        public static void infoapp(Appartian app)
        {
            Appartian();
           
            DataRow ligne = Global.Dataset.Tables["Appartian"].NewRow();
                ligne["IdRess"] = app.IdRess;
         
                ligne["IdPub"] = app.IdPub;

                Global.Dataset.Tables["Appartian"].Rows.Add(ligne);
                sda.Update(Global.Dataset, "Appartian");

            
        }
    }
}
