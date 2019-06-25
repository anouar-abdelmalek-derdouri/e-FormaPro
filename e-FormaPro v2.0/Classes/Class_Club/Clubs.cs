﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Clubs
    {
        

        private string _NomClub;

        public string NomClub
        {
            get { return _NomClub; }
            set { _NomClub = value; }
        }

        private string _Sujets;

        public string Sujets
        {
            get { return _Sujets; }
            set { _Sujets = value; }
        }


        private string _Régles;

        public string Régles
        {
            get { return _Régles; }
            set { _Régles = value; }
        }

        private string _Stagiaire;

        public string Stagiaire
        {
            get { return _Stagiaire; }
            set { _Stagiaire = value; }
        }

        private string _Formateur;

        public string Formateur
        {
            get { return _Formateur; }
            set { _Formateur = value; }
        }
        
        

        public Clubs()
        {

        }

        public Clubs(string nomClub, string sujets,  string régles, string stagiaire,string formateur)
        {
            NomClub = nomClub;
            Sujets = sujets;
            
            Régles = régles;
            Stagiaire = stagiaire;
            Formateur = formateur;
        }
    }
}
