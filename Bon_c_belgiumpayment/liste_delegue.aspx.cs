using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bon_c_belgiumpayment
{
    public partial class liste_delegue : System.Web.UI.Page
    {
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

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}