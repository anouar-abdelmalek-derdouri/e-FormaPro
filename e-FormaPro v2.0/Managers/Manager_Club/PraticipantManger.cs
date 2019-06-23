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
    public static class PraticipantManger
    {
        static SqlDataAdapter sda = new SqlDataAdapter(@"select	* from	Participants", Global._Connection);

        public static DataTable Praticipants()
        {


            if (Global.Dataset.Tables["Praticipants"] == null)
            {
                sda.Fill(Global.Dataset, "Praticipants");
            }
            return Global.Dataset.Tables["Praticipants"];
        }
        public static void AjouterPla(Praticipants Praticipant)
        {
            Praticipants();
            DataRow ligne = Global.Dataset.Tables["Praticipants"].NewRow();

            ligne["Sujet"] = planification.Sujet;
            ligne["Date"] = planification.Date;
            ligne["Durée"] = planification.Durée;
            ligne["HeureDébut"] = planification.HeureDébut;
            ligne["Club"] = planification.Club;

            Global.Dataset.Tables["Planifications"].Rows.Add(ligne);
            sda.Update(Global.Dataset, "Planifications");

        }
    }
}
