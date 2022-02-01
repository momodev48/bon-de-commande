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
    public partial class ajouter_terminal : System.Web.UI.Page
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
            string req = "insert into terminal values('" + tb_nomterminal.Text + "'," + tb_prixlocation.Text + "," + tb_prixvente.Text + ",'" + DropDownList_type.SelectedValue + "')";
            SqlCommand cmd = new SqlCommand(req, cnx);
            cmd.ExecuteNonQuery();
            labelajout.Text = "Bien ajouté";
            this.DataBind();
            cnx.Close();
        }
    }
}