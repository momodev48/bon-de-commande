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
    public partial class ajouter_client : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Bon_de_commande;Integrated Security=True");

        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cnx"] == "ok" /*&& Session["admin"] == "oui"*/)
            {
                labeluser.Text = "Vous êtes connecté en tant que " + Session["user"];
            }
            else
            {
                Response.Redirect("connexion.aspx");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cnx.Open();
            string jourfermeture = "";
            foreach (ListItem x in checkbox_jourfermeture.Items)
            {
                if (x.Selected)
                {
                    jourfermeture = jourfermeture + "  " + x.Text;
                }
            }
            //label_ajout.Text = jourfermeture;
            string req = "insert into societe_cliente values('" + tb_nolsoc.Text + "','" + tb_nomens.Text + "','" + tb_adresse.Text + "'," + tb_codepostal.Text + ",'" + tb_ville.Text + "','" + tb_tva.Text + "','" + tb_perscontact.Text + "','" + tb_fonction.Text + "','" + tb_gsm.Text + "','" + tb_email.Text + "','" + tb_iban.Text + "','" + tb_heuresouv1.Text + "  " + tb_heureferm1.Text + "  " + tb_heuresouv2.Text + "  " + tb_heureferm2.Text + "','" + tb_activite.Text + "','" + jourfermeture + "')";
            SqlCommand cmd = new SqlCommand(req, cnx);
            cmd.ExecuteNonQuery();
            //label_ajout.Text = "Bien ajouté";
            Response.Write("<script>alert('Client bien ajouté !');</script>");
            this.DataBind();
            cnx.Close();
        }

        /*protected void CB_apres_CheckedChanged(object sender, EventArgs e)
        {
            if (CB_apres.Checked == true)
            {
                tb_heuresouv2.Enabled = true;
                label_ouvertaprem1.Enabled = true;
                tb_heureferm2.Enabled = true;
            }
            else
            {
                tb_heuresouv2.Enabled = false;
                label_ouvertaprem1.Enabled = false;
                tb_heureferm2.Enabled = false;
            }
        }*/
    }
}