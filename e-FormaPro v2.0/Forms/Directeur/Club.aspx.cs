using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using e_FormaPro_v2._0.Classes;
using e_FormaPro_v2._0.Managers;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Club : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DropDownList_fn.Visible = false;
            DropDownList_fp.Visible = false;
            DropDownList_sn.Visible = false;
            DropDownList_sp.Visible = false;
            
        }

        protected void ImageButton_update_Click(object sender, ImageClickEventArgs e)
        {
            string variable = null;
            string index = GridView1.SelectedRow.Cells[0].Text;
            if (RadioButton_s.Checked)
            {
                ClubManager.updateClub(TextBox_nom, TextBox_sujet, TextBox_regles,DropDownList_s,variable);
                
            }
            else
            {
                ClubManager.updateClub(TextBox_nom, TextBox_sujet, TextBox_regles, DropDownList_f, variable,index);

            }
            Clear();

        }

        protected void ImageButton_add_Click(object sender, ImageClickEventArgs e)
        {
            try
            {
                if (RadioButton_f.Checked || RadioButton_s.Checked)
                {
                    string variable = null;
                    if (RadioButton_s.Checked)
                    {
                        Clubs club = new Clubs(TextBox_nom.Text, TextBox_sujet.Text, TextBox_regles.Text, DropDownList_s.Text, variable);
                        ClubManager.AjouterClub(club);
                        Participants p = new Participants(DropDownList_s.Text, DropDownList_sn.Text,DropDownList_sp.Text, "Président", TextBox_nom.Text);
                        ParticipantsManager.addparti(p);
                    }
                    else
                    {
                        Clubs club = new Clubs(TextBox_nom.Text,TextBox_sujet.Text, TextBox_regles.Text, variable, DropDownList_f.Text);
                        ClubManager.AjouterClub(club);
                        Participants p = new Participants(DropDownList_f.Text, DropDownList_fn.Text, DropDownList_fp.Text, "Président", TextBox_nom.Text);
                        ParticipantsManager.addparti(p);
                    }
                    Clear();
                }
                else
                {
                }
            }
            catch (Exception)
            {

            }

        }

        protected void ImageButton_delete_Click(object sender, ImageClickEventArgs e)
        {
            ClubManager.deleteClub(GridView1.SelectedRow.Cells[0].Text);

        }
        public void Clear()
        {
            TextBox_nom.Text = string.Empty;
            TextBox_sujet.Text = string.Empty;
            TextBox_regles.Text = string.Empty;
            DropDownList_fn.Visible = false;
            DropDownList_fp.Visible = false;
            DropDownList_sn.Visible = false;
            DropDownList_sp.Visible = false;
        }
       
    }
}