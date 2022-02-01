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
    public partial class afficher_client : System.Web.UI.Page
    {
        SqlConnection cnx = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=Bon_de_commande;Integrated Security=True");
        SqlCommand cmd = null;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(GridView1.SelectedRow!=null)
            {
                DetailsView1.Visible = true;
            }
            else
            {
                DetailsView1.Visible = false;
            }
           /* if(IsPostBack)
            {
                RemplirGrid();
            }*/
        }

        public void RemplirGrid()
        {
            /*cnx.Open();
            string req = "select * from societe_cliente";
            SqlDataAdapter da = new SqlDataAdapter(req, cnx);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView_CLient.DataSource = dt;
            GridView_CLient.DataBind();
            cnx.Close();*/
        }

        protected void tb_nomsoc_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}