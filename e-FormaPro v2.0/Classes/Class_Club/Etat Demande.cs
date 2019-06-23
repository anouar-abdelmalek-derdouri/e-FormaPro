using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Etat_Demande
    {
        private string _IdEtat;

        public string IdEtat
        {
            get { return _IdEtat; }
            set { _IdEtat = value; }
        }

        private string _Etat;

        public string Etat
        {
            get { return _Etat; }
            set { _Etat = value; }
        }

        public Etat_Demande()
        {

        }

        public Etat_Demande(string idEtat, string etat)
        {
            IdEtat = idEtat;
            Etat = etat;
        }
    }
}
