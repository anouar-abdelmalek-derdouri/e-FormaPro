using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using e_FormaPro_v2._0.Classes;
using System.Data.SqlClient;
using e_FormaPro_v2._0.Utilitaires;

namespace e_FormaPro_v2._0.Managers
{
    public static class DirecteursManager
    {
        public static DataTable Directeurs()
        {
            DataTable dataTable = new DataTable();

            SqlDataAdapter DirecteurAdapter = new SqlDataAdapter("Select * from Directeurs", Chaines.ConnectionDirecteur);
            DirecteurAdapter.Fill(dataTable);

            return dataTable;
        }

        public static Directeur Existe(string login, string motDePasse)
        {
            SqlCommand command = new SqlCommand();
            command.Connection = Chaines.ConnectionDirecteur;
            Chaines.ConnectionDirecteur.Open();
            command.CommandText = String.Format("Select * from Directeurs where Matricule = '{0}' and MotDePasse = '{1}'", login, motDePasse);
            Directeur directeur = new Directeur();
            SqlDataReader reader;
            reader = command.ExecuteReader();
            if (reader == null)
            {
                return null;
            }
            while (reader.Read())
            {
                directeur._Matricule = reader["Matricule"].ToString();
                directeur._Nom = reader["Nom"].ToString();
                directeur._Prenom = reader["Prenom"].ToString();
                directeur._DateEmbauche = Convert.ToDateTime(reader["DatEmbauche"]);
                directeur._MotDePasse = reader["MotDePasse"].ToString();
                directeur._Email = reader["email"].ToString();
            }


            Chaines.ConnectionDirecteur.Close();

            return directeur;
        }

      
    }
}