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
    public partial class creer_bdc : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Bon_de_commande;Integrated Security=True");

        SqlDataReader dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cnx"] == "ok")
            {
                //labeluser.Text = "Vous êtes connecté en tant que " + Session["user"];
                tb_nomdeleg.Text = Session["nomdelegue"].ToString();
                tb_iddeleg.Text = Session["iddeleg"].ToString();
                Calendar_datecrea.SelectedDate = DateTime.Today;
            }
            else
            {
                Response.Redirect("connexion.aspx");
            }
            
        }

        protected void tb_suivant_Click(object sender, EventArgs e)
        {
            cnx.Open();
            
            //label_ajout.Text = jourfermeture;
            string req = "insert into bondecommande values(" + tb_iddeleg.Text + ",'" + tb_nomdeleg.Text + "'," + dd_id_societe.Text + ",'" + Calendar_datecrea.SelectedDate.ToString() + "')";
            SqlCommand cmd = new SqlCommand(req, cnx);
            cmd.ExecuteNonQuery();
            //label_ajout.Text = "Bien ajouté";
            Response.Write("<script>alert('Bonde commande bien ajouté !');</script>");
            this.DataBind();
            cnx.Close();
            Response.Redirect("detailscommande.aspx");
        }

        protected void btn_ajoutersoc_Click(object sender, EventArgs e)
        {
            Response.Redirect("ajouter_client.aspx");
        }
    }
}