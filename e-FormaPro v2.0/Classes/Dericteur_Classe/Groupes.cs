using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Classes.Dericteur_Classe
{
    public class Groupes
    {
        private Groupes _Groupe;

        public Groupes Groupe
        {
            get { return _Groupe; }
            set { _Groupe = value; }
        }

        public Groupes()
        {
        }

        public Groupes(Groupes groupe)
        {
            this._Groupe = groupe;
        }
    }
}