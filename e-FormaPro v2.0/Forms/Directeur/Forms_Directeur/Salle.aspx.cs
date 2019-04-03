using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur
{
    public partial class Salle : System.Web.UI.Page
    {
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                if (ViewState != null)
                {
                    dt.Columns.Add("Salle");
                    dt.Columns.Add("Capacité");
                    dt.Columns.Add("Type");
                    ViewState["Recorde"] = dt;
                }

            }
        }

        protected void Button_Ajouter_Click(object sender, EventArgs e)
        {
            string type = "";
            dt = (DataTable)ViewState["Recorde"];
            if (RadioButton_Cours.Checked == true)
            {
                type = "Cours";
            }
            else if (RadioButton_Atelier.Checked == true)
            {
                type = "Atelier";
            }
            dt.Rows.Add(TextBox_Salles.Text, TextBox_Capacité);
            GridView_Salle.DataSource = dt;
            GridView_Salle.DataBind();
        }
    }
}