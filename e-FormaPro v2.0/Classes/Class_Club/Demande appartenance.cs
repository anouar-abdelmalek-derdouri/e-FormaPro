using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Demande_appartenance
    {
        private int _IdDA;

        public int IdDA
        {
            get { return _IdDA; }
            set { _IdDA = value; }
        }

        private string _Stagiaire;

        public string Stagiaire
        {
            get { return _Stagiaire; }
            set { _Stagiaire = value; }
        }

        private string _Formateur;

        public string Formateur
        {
            get { return _Formateur; }
            set { _Formateur = value; }
        }
        

        private string _IdClub;

        public string IdClub
        {
            get { return _IdClub; }
            set { _IdClub = value; }
        }

        public Demande_appartenance()
        {

        }

        public Demande_appartenance( string stagiaire,string formateur, string idClub)
        {
            IdClub = idClub;
            Stagiaire = stagiaire;
            Formateur = formateur;
        }
        
        
        
    }
}
