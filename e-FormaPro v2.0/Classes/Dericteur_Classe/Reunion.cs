using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Reunion
    {
        private int _Code;

        public int Code
        {
            get { return _Code; }
            set { _Code = value; }
        }

        private DateTime _Date;

        public DateTime Date
        {
            get { return _Date; }
            set { _Date = value; }
        }

        private DateTime _Heures;

        public DateTime Heures
        {
            get { return _Heures; }
            set { _Heures = value; }
        }

        private int _Duree;

        public int Duree
        {
            get { return _Duree; }
            set { _Duree = value; }
        }

        private string _Objectif;

        public string Objectif
        {
            get { return _Objectif; }
            set { _Objectif = value; }
        }

        private string _Participants;

        public string Participants
        {
            get { return _Participants; }
            set { _Participants = value; }
        }

        public Reunion()
        {
        }

        public Reunion(int code, DateTime date, DateTime heures, int duree, string objectif, string participants)
        {
            this._Code = code;
            this._Date = date;
            this._Heures = heures;
            this._Duree = duree;
            this._Objectif = objectif;
            this._Participants = participants;
        }
    }
}