using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Stagiaires
    {
        private string _Code;

        public string Code
        {
            get { return _Code; }
            set { _Code = value; }
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

        public Stagiaires()
        {
        }

        public Stagiaires(string code, string nom, string prenom)
        {
            this._Code = code;
            this._Nom = nom;
            this._Prenom = prenom;
        }

    }
}