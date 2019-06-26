using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Filiere
    {
        private string _Nom;

        public string Nom
        {
            get { return _Nom; }
            set { _Nom = value; }
        }

        private string _Libelle;

        public string Libelle
        {
            get { return _Libelle; }
            set { _Libelle = value; }
        }


        private Formations _Formation;

        public Formations Formation
        {
            get { return _Formation; }
            set { _Formation = value; }
        }

        public Filiere()
        {
        }

        public Filiere( string nom, string libelle, Formations formation)
        {
            this._Nom = nom;
            this._Libelle = libelle;
            this._Formation = formation;
        }


    }
}