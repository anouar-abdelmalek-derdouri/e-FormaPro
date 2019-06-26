using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class FormateurAbsence
    {
        private Formations _Formation;

        public Formations Formation
        {
            get { return _Formation; }
            set { _Formation = value; }
        }

        private DateTime _Date;

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

        private int _NombreHeures;

        public int NombreHeures
        {
            get { return _NombreHeures; }
            set { _NombreHeures = value; }
        }

        private string _Motifs;

        public string Motifs
        {
            get { return _Motifs; }
            set { _Motifs = value; }
        }

        public FormateurAbsence()
        {
        }


        public FormateurAbsence(Formations formation, DateTime date, int nombreHeures, string motifs)
        {
            this._Formation = formation;
            this._Date = date;
            this._NombreHeures = nombreHeures;
            this._Motifs = motifs;
        }

    }
}