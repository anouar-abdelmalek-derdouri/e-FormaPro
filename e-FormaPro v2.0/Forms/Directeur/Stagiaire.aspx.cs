using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace e_FormaPro_v2._0.Forms.Directeur
{
    public partial class Stagiaire : System.Web.UI.Page
    {
         SqlConnection connection = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=Espace_pédagogique2;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Rechercher_Click(object sender, EventArgs e)
        {
         
             if (RadioButton_Code.Checked)
             {
             GridView_Stagiaire.DataSourceID = null;
                 string query = string.Format(@"select Matricule, (Stagiaires.Nom + ' ' + Stagiaires.Prenom) as [Nom Complet], 
                                                    Stagiaires.Email, 
                                                    Stagiaires.Telephone, Stagiaires.Groupe, 
                                                    isnull(COUNT(AbsenceStagiaire.Stagiaire), 0) as [Nombre d'absences]
                                             from Stagiaires left outer  join AbsenceStagiaire
                                             on Stagiaires.Matricule = AbsenceStagiaire.Stagiaire
                                              where Stagiaires.Matricule = '{0}'  
                                             group by Stagiaires.Matricule, AbsenceStagiaire.Stagiaire, Stagiaires.Email, 
                                             Stagiaires.Telephone, Stagiaires.Groupe,
                                             Stagiaires.Nom, Stagiaires.Prenom", TextBox_Recherche.Text); 

                 SqlDataAdapter _Adapter = new SqlDataAdapter(query, connection);
                 DataSet _dataSet = new DataSet();
                 _Adapter.Fill(_dataSet, "Code");

                 DataView _dataView = new DataView();
                 _dataView.Table = _dataSet.Tables["Code"];

                 _dataView.RowFilter = string.Format("Matricule='{0}'", TextBox_Recherche.Text);

                 GridView_Stagiaire.DataSource = _dataView;
                GridView_Stagiaire.DataBind();

                 //_dataView.RowFilter = string.Format("Id='{0}'", bunifuMetroTextbox_Recherch.Text);

                 //dataGridView_Stagiaire.DataSource = _dataView;
             }
             else if (RadioButton_NomComplet.Checked)
             {
              GridView_Stagiaire.DataSourceID = null;
                 string query1 = string.Format(@"select Matricule, (Stagiaires.Nom + ' ' + Stagiaires.Prenom) as [NomComplet], 
                                                    Stagiaires.Email, 
                                                    Stagiaires.Telephone, Stagiaires.Groupe, 
                                                    isnull(COUNT(AbsenceStagiaire.Stagiaire), 0) as [Nombre d'absences]
                                             from Stagiaires left outer  join AbsenceStagiaire
                                             on Stagiaires.Matricule = AbsenceStagiaire.Stagiaire
                                             where (Stagiaires.Nom + ' ' + Stagiaires.Prenom) = '{0}' 
                                             group by Stagiaires.Matricule, AbsenceStagiaire.Stagiaire, Stagiaires.Email, 
                                             Stagiaires.Telephone, Stagiaires.Groupe,
                                             Stagiaires.Nom, Stagiaires.Prenom", TextBox_Recherche.Text);


                 SqlDataAdapter _Adapter1 = new SqlDataAdapter(query1, connection);
                 DataSet _dataSet1 = new DataSet();
                 _Adapter1.Fill(_dataSet1, "NomComplet");

                 DataView _dataView1 = new DataView();
                 _dataView1.Table = _dataSet1.Tables["NomComplet"];

                 _dataView1.RowFilter = string.Format("[NomComplet] ='{0}'", TextBox_Recherche.Text);
                 GridView_Stagiaire.DataSource = _dataView1;
                GridView_Stagiaire.DataBind();

                 //_dataView1.RowFilter = string.Format("Nom + ' ' + Prenom ='{0}'", bunifuMetroTextbox_Recherch.Text);
                 //dataGridView_Stagiaire.DataSource = _dataView1;
             }
        }

        protected void GridView_Stagiaire_SelectedIndexChanged(object sender, EventArgs e)
        {
          //  Session["note"] = GridView_NoteStagiaire.SelectedRow.Cells[0].Text.ToString();
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            
        }
    }
    }
