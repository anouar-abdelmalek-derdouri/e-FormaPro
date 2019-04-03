using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace e_FormaPro_v2._0.Forms.Directeur.Forms_Directeur
{
    public partial class Réunion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt;
            dt = new DataTable();
            DataColumn col = new DataColumn(); ;
            col = new DataColumn("Numéro");
            dt.Columns.Add(col);
            col = new DataColumn("Date");
            dt.Columns.Add(col);
            col = new DataColumn("Heure");
            dt.Columns.Add(col);
            col = new DataColumn("les objectifs");
            dt.Columns.Add(col);
            DataRow dr = dt.NewRow();
            dr["Numéro"] = "R001";
            dr["Date"] = "02/02/2019";
            dr["Heure"] = "07:07 AM";
            dr["les objectifs"] = "jtima3 darouri lachgar cha9ha m3a lgroupe B darou ma7der dadou l9adia kbart ghda wla ba3do atji chouf tv tssawar m3ana";
            dt.Rows.Add(dr);

            DataRow drr = dt.NewRow();
            drr["Numéro"] = "R002";
            drr["Date"] = "02/02/2020";
            dr["Heure"] = "10:07 AM";
            drr["les objectifs"] = "3awtani jtima3 darouri lachgar cha9ha m3a lgroupe B darou ma7der dadou l9adia kbart ghda wla ba3do atji chouf tv tssawar m3ana";
            dt.Rows.Add(drr);


            GridView_Reunion.DataSource = dt;
            GridView_Reunion.DataBind();

        }
    }
}