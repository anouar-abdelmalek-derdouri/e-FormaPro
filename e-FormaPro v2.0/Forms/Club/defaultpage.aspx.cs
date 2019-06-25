using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_FormaPro_v2._0.Classes.Class_Club;
using e_FormaPro_v2._0.Managers.Manager_Club;

namespace Projet
{
    public partial class defaultpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                Setimage();
                if (!(Global.president == ""))
                {
                    Panel1.Visible = true;
                    Global.president = "";
                }
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

        protected void ImageButton_les_demende_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Demandes.aspx");
        }
    }
}