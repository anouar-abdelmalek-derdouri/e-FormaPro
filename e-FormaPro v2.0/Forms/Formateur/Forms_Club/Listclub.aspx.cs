﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projet
{
    public partial class Listclub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_afiche_Click(object sender, EventArgs e)
        {
            Response.Redirect("defaultpage.aspx");
        }
    }
}