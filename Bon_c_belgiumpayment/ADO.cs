
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Bon_c_belgiumpayment
{
    public class ADO
{
    //declaration des objets sql 
    public SqlConnection con = new SqlConnection();
    public SqlCommand cmd = new SqlCommand();
    public IDataReader dr;
    public DataTable dt = new DataTable();
    public SqlDataAdapter dap = new SqlDataAdapter();
    public DataSet ds = new DataSet();
    public DataRow ligne;
    //declaration de la methode connecter 
    public void connecter()
    {
        if (con.State == ConnectionState.Closed || con.State == ConnectionState.Broken)
        {
            con.ConnectionString = @"Data Source=.\SQLEXPRESS;Initial Catalog=Bon_de_commande;Integrated Security=True";
            con.Open();
        }
    }

    //declaration de la methode deconnecter 
    public void deconnecter()
    {
        if (con.State == ConnectionState.Open)
        {
            con.Close();
        }
    }


}
}
