using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton_Notification_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Notification.aspx");
        }

        protected void ImageButton_les_demende_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("Demandes.aspx");
        }
    }
}