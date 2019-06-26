using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Modules
    {
        private int _Numero;

        public int Numero
        {
            get { return _Numero; }
            set { _Numero = value; }
        }

        private string _Nom;

        public string Nom
        {
            get { return _Nom; }
            set { _Nom = value; }
        }

        private string _NiveauScolaire;

        public string NiveauScolaire
        {
            get { return _NiveauScolaire; }
            set { _NiveauScolaire = value; }
        }


        private int _MassHorraire;

        public int MassHorraire
        {
            get { return _MassHorraire; }
            set { _MassHorraire = value; }
        }


        private int _Semestre;

        public int Semestre
        {
            get { return _Semestre; }
            set { _Semestre = value; }
        }


        private Filiere _Filiere;

        public Filiere Filiere
        {
            get { return _Filiere; }
            set { _Filiere = value; }
        }

        private int _Coefficient;

        public int Coefficient
        {
            get { return _Coefficient; }
            set { _Coefficient = value; }
        }

        private string _Type;

        public string Type
        {
            get { return _Type; }
            set { _Type = value; }
        }

        public Modules()
        {
        }

        public Modules(int numero, string nom, string niveauScolaire, int massHoraire, int semestre, Filiere filiere, int coefficient, string type)
        {
            this._Numero = numero;
            this._Nom = nom;
            this._NiveauScolaire = niveauScolaire;
            this._MassHorraire = massHoraire;
            this._Semestre = semestre;
            this._Filiere = filiere;
            this._Coefficient = coefficient;
            this._Type = type;
        }
    }
}