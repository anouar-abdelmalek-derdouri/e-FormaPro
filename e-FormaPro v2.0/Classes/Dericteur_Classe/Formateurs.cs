using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Formateurs
    {
        private string _Matricule;

        public string Matricule
        {
            get { return _Matricule; }
            set { _Matricule = value; }
        }

        private string _Nom;

        public string Nom
        {
            get { return _Nom; }
            set { _Nom = value; }
        }

        private string _Prenom;

        public string Prenom
        {
            get { return _Prenom; }
            set { _Prenom = value; }
        }

        public Formateurs()
        {
        }

        public Formateurs(string matricule, string nom, string prenom)
        {
            this._Matricule = matricule;
            this._Nom = nom;
            this._Prenom = prenom;
        }
    }
}