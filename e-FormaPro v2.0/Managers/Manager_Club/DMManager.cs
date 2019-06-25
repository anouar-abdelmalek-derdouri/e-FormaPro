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
    class DMManager
    {
        static SqlDataAdapter sda = new SqlDataAdapter(@"select	* from	[Demande appartenance] ", Global._Connection);
        
        public static DataTable DM()
        {
            Global._Connection.Open();

            Global._Command.Connection = Global._Connection;

            SqlDataReader reader;
            DataTable table = new DataTable();

            Global._Command.CommandText = string.Format(@"select * from	DMA 
                                                           where    Club = '{0}'", Global.variable);
            reader = Global._Command.ExecuteReader();

            table.Load(reader);

            reader.Close();

            Global._Connection.Close();

            return table;

        }

        public static DataTable Demande_appartenance()
        {
            new SqlCommandBuilder(sda);

            if (Global.Dataset.Tables["[Demande appartenance]"] == null)
            {
                sda.Fill(Global.Dataset, "[Demande appartenance]");
            }
            return Global.Dataset.Tables["[Demande appartenance]"];
        }

        public static void AjouterDM(Demande_appartenance DM)
        {
            Demande_appartenance();
            DataRow ligne = Global.Dataset.Tables["[Demande appartenance]"].NewRow();
            
            ligne["Club"] = DM.IdClub;
            ligne["Formateur"] = DM.Formateur;
            ligne["Stagiaire"] = DM.Stagiaire;


            Global.Dataset.Tables["[Demande appartenance]"].Rows.Add(ligne);
            sda.Update(Global.Dataset, "[Demande appartenance]");

        }

        public static void SupDM(int id)
        {
            Demande_appartenance();
            foreach (DataRow Ligne in Global.Dataset.Tables["[Demande appartenance]"].Rows)
            {
                if (Ligne["Stagiaire"].ToString() ==  id.ToString())
                {
                    Ligne.Delete();
                    sda.Update(Global.Dataset, "[Demande appartenance]");
   
                    break;
                }
                else if (Ligne["Formateur"].ToString() == id.ToString())
                {
                    Ligne.Delete();
                    sda.Update(Global.Dataset, "[Demande appartenance]");

                    break;
                }
            }


        }
    }
}
