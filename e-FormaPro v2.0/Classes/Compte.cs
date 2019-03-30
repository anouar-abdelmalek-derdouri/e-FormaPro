using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;

namespace e_FormaPro_v2._0.Classes
{
    public class Compte
    {
        private string _Login;
        public string Login
        {
            get { return _Login; }
            set { _Login = value; }
        }

        private string _MotDePasse;
        public string MotDePasse
        {
            get { return _MotDePasse; }
            set { _MotDePasse = value; }
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

        public string NomComplet 
        {
            get
            {
                return Chaines.NomComplet(Prénom, Nom);
            }
        }

#warning Ajouter ici les autre attributs communs entre stagiaire, formateur, directeur et surveillant.

        
    }
}