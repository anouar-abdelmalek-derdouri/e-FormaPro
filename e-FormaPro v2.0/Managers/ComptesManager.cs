using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using e_FormaPro_v2._0.Classes;

namespace e_FormaPro_v2._0.Managers
{
    public static class ComptesManager
    {
        public static Compte Existe(string login, string motDePasse)
        {
            Compte compte = DirecteursManager.Existe(login, motDePasse);

            if (compte != null) return compte;
            else compte = SurveillantsManager.Existe(login, motDePasse);

            if (compte != null) return compte;
            else compte = FormateursManager.Existe(login, motDePasse);

            if (compte != null) return compte;
            else compte = StagiairesManager.Existe(login, motDePasse);

            return compte;
        }
    }
}