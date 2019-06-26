using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class JoursFeries
    {
        private DateTime _DateDeJour;

        public DateTime DateDeJour
        {
            get { return _DateDeJour; }
            set { _DateDeJour = value; }
        }

        private int _NombreDeJour;

        public int NombreDeJour
        {
            get { return _NombreDeJour; }
            set { _NombreDeJour = value; }
        }

        private string _Fete;

        public string Fete
        {
            get { return _Fete; }
            set { _Fete = value; }
        }

        public JoursFeries()
        {
        }

        public JoursFeries(DateTime dateDeJour, int nombreDeJour, string fete)
        {
            this._DateDeJour = dateDeJour;
            this._NombreDeJour = nombreDeJour;
            this._Fete = fete;
        }
    }
}