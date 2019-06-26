using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Formations
    {
        private string _Nom;

        public string Nom
        {
            get { return _Nom; }
            set { _Nom = value; }
        }

        private string _Abreviation;

        public string Abreviation
        {
            get { return _Abreviation; }
            set { _Abreviation = value; }
        }

        public Formations()
        {
        }

        public Formations(string nom, string abreviation)
        {
            this._Nom = nom;
            this._Abreviation = abreviation;
        }


    }
}