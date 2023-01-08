using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebGrease.ImageAssemble;

namespace Project6
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            if (e.CommandName.CompareTo("OrderAccept") == 0)
            {
                int productID = Convert.ToInt32(GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Orders set OrderStatus='Accept' where ServiceID=2";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("WebForm4.aspx?x=ss");
            }
            else if (e.CommandName.CompareTo("OrderReject") == 0)
            {

                int productID = Convert.ToInt32(GridView1.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Orders set OrderStatus='Reject' where ServiceID=2";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("WebForm4.aspx?x=ss");
            }
            if (e.CommandName.CompareTo("FinishOrder") == 0)
            {
                int productID4 = Convert.ToInt32(GridView2.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Orders set OrderStatus='Finish' where ServiceID=2";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("WebForm4.aspx?x=ss");
            }
        }
    }
}