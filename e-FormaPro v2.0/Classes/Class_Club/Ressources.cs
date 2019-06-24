using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using e_FormaPro_v2._0.Utilitaires;
namespace e_FormaPro_v2._0.Classes.Class_Club
{
    class Ressources
    {
        private string _IdRess;

        public string IdRess
        {
            get { return _IdRess; }
            set { _IdRess = value; }
        }

        private byte[] _Images;

        public byte[] Images
        {
            get { return _Images; }
            set { _Images = value; }
        }

        public Ressources()
        {

        }

        public Ressources(byte[] image)
        {
            Images = image;
        }
        
    }
}
