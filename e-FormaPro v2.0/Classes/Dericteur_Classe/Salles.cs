using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Salles
    {
        private string _Nom;

        public string Nom
        {
            get { return _Nom; }
            set { _Nom = value; }
        }

        private int _Capacite;

        public int Capacite
        {
            get { return _Capacite; }
            set { _Capacite = value; }
        }

        private string _Type;

        public string Type
        {
            get { return _Type; }
            set { _Type = value; }
        }

        public Salles()
        {
        }

        public Salles(string nom, int capacite, string type)
        {
            this._Nom = nom;
            this._Capacite = capacite;
            this._Type = type;
        }
    }
}