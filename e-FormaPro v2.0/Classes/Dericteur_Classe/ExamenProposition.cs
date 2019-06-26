using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class ExamenProposition
    {
        private Formateur _Formateur;

        public Formateur Formateur
        {
            get { return _Formateur; }
            set { _Formateur = value; }
        }

        private Groupes _Groupes;

        public Groupes Groupes
        {
            get { return _Groupes; }
            set { _Groupes = value; }
        }

        private Modules _Module;

        public Modules Module
        {
            get { return _Module; }
            set { _Module = value; }
        }

        public ExamenProposition()
        {
        }

        public ExamenProposition(Formateur formateur, Groupes groupe, Modules module)
        {
            this._Formateur = formateur;
            this._Groupes = groupe;
            this._Module = module;
        }
    }
}