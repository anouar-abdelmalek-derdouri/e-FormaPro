using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet
{
    public partial class Activitées : System.Web.UI.Page
    {
        int i =1;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Image2.ImageUrl = "~/images/1.jpg";
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageNext();
        }

        private void ImageNext()
        {

            if (i == 4)
            {
                i = 1;

            }

            Image2.ImageUrl = "~/images/" + i.ToString() + ".jpg";
            i++;
        }
    }
}