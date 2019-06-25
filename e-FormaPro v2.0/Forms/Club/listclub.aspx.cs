using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using e_FormaPro_v2._0.Managers.Manager_Club;
using e_FormaPro_v2._0.Classes.Class_Club;

namespace e_FormaPro_v2._0.Forms.Club
{
    public partial class listclub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        
        protected void ImageButton_view_Click(object sender, ImageClickEventArgs e)
        {
            
        }

        protected void DataList_club_ItemCommand(object source, DataListCommandEventArgs e)
        {
            if (e.CommandName == "view")
            {
                if (ParticipantsManager.ParticipantsDVF(e.CommandArgument.ToString(), Session["login"].ToString()) == true)
                {
                    Response.Redirect("defaultpage.aspx?id=" + e.CommandArgument.ToString());
                }
                else
                {
                    //Label_erreur.visible = true;
                }
            }
        }
    }
}