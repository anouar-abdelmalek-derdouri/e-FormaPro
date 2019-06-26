using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes
{
    public class Directeur : Compte
    {
        private string Matricule;
        public string _Matricule
        {
            get { return Matricule; }
            set { Matricule = value; }
        }


        private string Nom;

        public string _Nom
        {
            get { return Nom; }
            set { Nom = value; }
        }

        private string Prenom;

        public string _Prenom
        {
            get { return Prenom; }
            set { Prenom = value; }
        }


        private DateTime DateEmbauche;

        public DateTime _DateEmbauche
        {
            get { return DateEmbauche; }
            set { DateEmbauche = value; }
        }


        private string MotDePasse;

        public string _MotDePasse
        {
            get { return MotDePasse; }
            set { MotDePasse = value; }
        }

        private string Email;

        public string _Email
        {
            get { return Email; }
            set { Email = value; }
        }

        public Directeur()
        {
        }

    }
}