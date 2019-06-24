using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Appartian
    {
        private string _IdPub;

        public string IdPub
        {
            get { return _IdPub; }
            set { _IdPub = value; }
        }

        private string _IdRess;

        public string IdRess
        {
            get { return _IdRess; }
            set { _IdRess = value; }
        }

        public Appartian()
        {

        }

        public Appartian(string idPub, string idRess)
        {
            IdPub = idPub;
            IdRess = idRess;
        }
    }
}
