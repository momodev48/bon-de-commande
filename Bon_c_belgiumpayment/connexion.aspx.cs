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
    public partial class connexion : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Bon_de_commande;Integrated Security=True");
        SqlDataReader dr;
        SqlDataReader dr2;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_cnx_Click(object sender, EventArgs e)
        {
            cnx.Open();

            string req = "select * from delegue";
            SqlCommand cmd = new SqlCommand(req, cnx);
            dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (tb_login.Text == (dr["login_"].ToString()) && tb_mdps.Text == (dr["mot_de_passe"].ToString()))
                {

                    Session["user"] = dr["login_"];
                    Session["nomdelegue"] = dr["nom"];
                    Session["iddeleg"] = dr["iddeleg"];
                    Session["cnx"] = "ok";
           
                    if (dr["admin_"].ToString() == "oui")
                    {
                        Session["admin"] = "oui";
                    }
                    else
                    {
                        Session["admin"] = "non";
                    }
                    Response.Redirect("accueil.aspx");
                    
                }
                else
                {
                    Response.Write("<script>alert('Identifiant ou mot incorrect, veuillez réssayer !');</script>");
                }


            }
            cnx.Close();
        }
    }
}