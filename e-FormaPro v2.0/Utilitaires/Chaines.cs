using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace e_FormaPro_v2._0.Utilitaires
{
    public static class Chaines
    {
        /// <summary>
        /// Retourne le nom complet comme suit : Prénom NOM
        /// </summary>
        /// <param name="nom"></param>
        /// <param name="prénom"></param>
        /// <returns></returns>
        public static string NomComplet(string nom, string prénom)
        {
            return string.Format("{0}{1} {2}",
                                 prénom.Substring(0, 1).ToUpper(),
                                 prénom.Substring(1).ToLower(),
                                 nom.ToUpper());
        }
    }
}