using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Appartenance
    {
        private string _IdClub;

        public string IdClub
        {
            get { return _IdClub; }
            set { _IdClub = value; }
        }

        private string _IdPar;

        public string IdPar
        {
            get { return _IdPar; }
            set { _IdPar = value; }
        }

        public Appartenance()
        {

        }

        public Appartenance(string idClub, string idPar)
        {
            IdClub = idClub;
            IdPar = idPar;
        }
        
        
    }
}
