using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet
{
    public partial class defaultpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Setimage();
            }
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Setimage();

        }

        private void Setimage()
        {
            Random _rand = new Random();
            int i = _rand.Next(1,5);
            Image1.ImageUrl = "~/Forms/Formateur/Icon_club/" + i.ToString() + ".jpg";
        }
    }
}