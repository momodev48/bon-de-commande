using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bon_c_belgiumpayment
{
    public partial class accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["cnx"] == "ok")
            {
                labeluser.Text = "Bienvenue " + Session["user"];
            }
            else
            {
                Response.Redirect("connexion.aspx");
            }
        }
    }
}