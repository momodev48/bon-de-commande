using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Bon_c_belgiumpayment
{
    public partial class detailscommande : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Bon_de_commande;Integrated Security=True");

        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cnx"] == "ok")
            {
                Calendar1.SelectedDate = DateTime.Today;
            }
            else
            {
                Response.Redirect("connexion.aspx");
            }
            
        }

        protected void btn_ajouter_et_terminer_Click(object sender, EventArgs e)
        {
            cnx.Open();
            string cr_actif = "";
            string cr_a_activer = "";
            foreach (ListItem x in CheckBox_actifs.Items)
            {
                if (x.Selected)
                {
                    cr_actif = cr_actif + "  " + x.Text;
                }
            }
            foreach (ListItem x in CheckBox_aactiver.Items)
            {
                if (x.Selected)
                {
                    cr_a_activer = cr_a_activer + "  " + x.Text;
                }
            }
            string req = "insert into detailcommande values(" + DDL_terminal.Text + "," + DDL_IDBDC.Text + "," + tb_quantite.Text + ",'" + DDL_loca_vente.Text + "','" + DDL_installation.Text + "','" + DDL_activation.Text + "','" + DDL_assistance.Text + "','" + tb_couttrans.Text + "','" + Calendar1.SelectedDate.ToString() + "','" + cr_actif + "','" + cr_a_activer + "')";
            SqlCommand cmd = new SqlCommand(req, cnx);
            cmd.ExecuteNonQuery();
            //label_ajout.Text = "Bien ajouté";
            Response.Write("<script>alert('Client bien ajouté !');</script>");
            this.DataBind();
            cnx.Close();
            Response.Redirect("creer_bdc.aspx");
        }

        protected void btn_ajouter_un_autre_Click(object sender, EventArgs e)
        {
            cnx.Open();
            string cr_actif = "";
            string cr_a_activer = "";
            foreach (ListItem x in CheckBox_actifs.Items)
            {
                if (x.Selected)
                {
                    cr_actif = cr_actif + "  " + x.Text;
                }
            }
            foreach (ListItem x in CheckBox_aactiver.Items)
            {
                if (x.Selected)
                {
                    cr_a_activer = cr_a_activer + "  " + x.Text;
                }
            }
            string req = "insert into detailcommande values(" + DDL_terminal.Text + "," + DDL_IDBDC.Text + "," + tb_quantite.Text + ",'" + DDL_loca_vente.Text + "','" + DDL_installation.Text + "','" + DDL_activation.Text + "','" + DDL_assistance.Text + "','" + tb_couttrans.Text + "','" + Calendar1.SelectedDate.ToString() + "','" + cr_actif + "','" + cr_a_activer + "')";
            SqlCommand cmd = new SqlCommand(req, cnx);
            cmd.ExecuteNonQuery();
            //label_ajout.Text = "Bien ajouté";
            Response.Write("<script>alert('Client bien ajouté !');</script>");
            this.DataBind();
            cnx.Close();
            tb_couttrans.Text = "";
            tb_quantite.Text = "";
            CheckBox_actifs.ClearSelection();
            CheckBox_aactiver.ClearSelection();
            //Response.Redirect("detailscommande.aspx");
        }
    }
}