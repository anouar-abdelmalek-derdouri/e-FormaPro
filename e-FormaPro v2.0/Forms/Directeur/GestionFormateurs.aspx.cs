using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using e_FormaPro_v2._0.Managers;
using e_FormaPro_v2._0.Classes;
using System.Data.SqlClient;
using System.Text;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Gestion_des_formateurs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public  string CreatePassword(int length)
        {
            const string valid = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
            StringBuilder res = new StringBuilder();//Represents a mutable string of characters
            Random rnd = new Random();//Represents a pseudo-random number generator, which is a device that produces a sequence of numbers that meet certain statistical requirements for randomness
            while (0 < length--)
            {
                res.Append(valid[rnd.Next(valid.Length)]);
            }
            return res.ToString();

        }
        protected void Button_Ajouter_Click(object sender, EventArgs e)
        {
            
            //TextBox_motdepass.Text = CreatePassword(9);
            SqlConnection Connection = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
            DataSet1 dataSetAchievers = new DataSet1();

          
             if (RadioButton_permanant.Checked == true)
             {

                 
                     
                 try{
                         SqlCommand command = new SqlCommand();
                         command.Connection = Connection;
                         command.CommandText = string.Format(@"insert  into  Formateurs Values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}',{10})", TextBox_matricule.Text, TextBox_nom.Text, TextBox_prenom.Text, TextBox_dateembauch.Text, "Permanant", TextBox_date.Text, TextBox_tele.Text, TextBox_motdepass.Text, TextBox_emeil.Text, TextBox_address.Text, Convert.ToInt32(DropDownList_fieliere.SelectedValue));
                         // command.Parameters.Add(new SqlParameter("@num_domaine", domaine.numéro));

                         Connection.Open();
                         command.ExecuteNonQuery();
                         Connection.Close();
                 }
                 catch
                 {

                     
                    
                         ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Attention! Le matricule doit etre unique!')", true);
                        
                     }

                 

                 
             }


             else
             {



                 try
                 {
                     SqlCommand command = new SqlCommand();
                     command.Connection = Connection;
                     command.CommandText = string.Format(@"insert  into  Formateurs Values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}',{10})", TextBox_matricule.Text, TextBox_nom.Text, TextBox_prenom.Text, TextBox_dateembauch.Text, "Vacataire", TextBox_date.Text, TextBox_tele.Text, TextBox_motdepass.Text, TextBox_emeil.Text, TextBox_address.Text, Convert.ToInt32(DropDownList_fieliere.SelectedValue));
                     // command.Parameters.Add(new SqlParameter("@num_domaine", domaine.numéro));

                     Connection.Open();
                     command.ExecuteNonQuery();
                     Connection.Close();
                 }
                 catch
                 {



                     ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Attention! Le matricule doit etre unique!')", true);

                 }

                        
                 
             }

          
            //GridView_Formateur.DataBind();
        }

        protected void TextBox_tele_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView_Formateur_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}