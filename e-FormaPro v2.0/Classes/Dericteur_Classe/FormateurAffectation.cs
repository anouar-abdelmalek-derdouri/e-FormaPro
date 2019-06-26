using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class FormateurAffectation
    {
        private Formateur _Formateur;

        public Formateur Formateur
        {
            get { return _Formateur; }
            set { _Formateur = value; }
        }

        private Groupes _Groupe;

        public Groupes Groupe
        {
            get { return _Groupe; }
            set { _Groupe = value; }
        }

        private Modules _Module;

        public Modules Module
        {
            get { return _Module; }
            set { _Module = value; }
        }

        public FormateurAffectation()
        {
        }

        public FormateurAffectation(Formateur formateur, Groupes groupe, Modules module)
        {
            this._Formateur = formateur;
            this._Groupe = groupe;
            this._Module = module;
        }

    }
}