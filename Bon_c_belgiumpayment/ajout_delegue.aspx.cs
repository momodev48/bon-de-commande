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
    public partial class ajout_delegue : System.Web.UI.Page
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

        protected void bt_ajouter_Click(object sender, EventArgs e)
        {
            cnx.Open();
            string req = "insert into delegue values('" + tb_nom.Text + "','" + tb_prenom.Text + "','" + tb_gsm.Text + "','" + tb_email.Text + "','" + tb_login.Text + "','" + tb_passe.Text + "','" + ddl_admin.SelectedValue.ToString() + "')";
            SqlCommand cmd = new SqlCommand(req, cnx);
            cmd.ExecuteNonQuery();
            //label_ajout.Text = "Bien ajouté";
            Response.Write("<script>alert('Client bien ajouté !');</script>");
            this.DataBind();
            cnx.Close();
   
            Response.Redirect("ajout_delegue.aspx");
        }
    }
}