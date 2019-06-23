using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Participants
    {
        private int _IdPar;

        public int IdPar
        {
            get { return _IdPar; }
            set { _IdPar = value; }
        }

        private string _Numéro;

        public string Numéro
        {
            get { return _Numéro; }
            set { _Numéro = value; }
        }

        private string _Nom;

        public string Nom
        {
            get { return _Nom; }
            set { _Nom = value; }
        }

        private string _Prénom;

        public string Prénom
        {
            get { return _Prénom; }
            set { _Prénom = value; }
        }

        private string _Type;

        public string Type
        {
            get { return _Type; }
            set { _Type = value; }
        }

        private string _Club;

        public string Club
        {
            get { return _Club; }
            set { _Club = value; }
        }
        
        

        public Participants()
        {

        }

        public Participants( string numéro, string nom, string prénom, string type, string club)
        {
            Club = club;
            Numéro = numéro;
            Nom = nom;
            Prénom = prénom;
            Type = type;
        }

    }
}
