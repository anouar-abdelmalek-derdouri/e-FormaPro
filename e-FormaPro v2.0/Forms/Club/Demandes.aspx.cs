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
    public partial class Demandes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        

        protected void ImageButton1_Click1(object sender, ImageClickEventArgs e)
        {
            Demande_appartenance DM = new Demande_appartenance(GridView2.SelectedRow.Cells[7].Text
                                                                 , GridView2.SelectedRow.Cells[1].Text
                                                                 , GridView2.SelectedRow.Cells[1].Text);
            DMManager.AjouterDM(DM);
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            try
            {
                DMManager.SupDM(Convert.ToInt32(GridView2.SelectedRow.Cells[7].Text));

            }
            catch (Exception)
            {


            }
        }
    }
}