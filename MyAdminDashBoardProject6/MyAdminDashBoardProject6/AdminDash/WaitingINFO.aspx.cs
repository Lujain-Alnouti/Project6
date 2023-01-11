using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace MyProject6
{
    public partial class WaitingINFO : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Dashboard_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDashBoard.aspx");

        }
        protected void Logout_Click(object sender, EventArgs e)
        {

        }
        protected void Beneficiary_Click(object sender, EventArgs e)
        {

            Response.Redirect("BeneficieryINFO.aspx");


        }
        protected void Doners_Click(object sender, EventArgs e)
        {

            Response.Redirect("DonerINFO.aspx");

        }
        protected void Donations_Click(object sender, EventArgs e)
        {
            Response.Redirect("DonationINFO.aspx");



        }
        protected void Waiting_Click(object sender, EventArgs e)
        {

            Response.Redirect("WaitingINFO.aspx");


        }


        protected void GridView4_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.CompareTo("Accepted") == 0)
            {
                int productID = Convert.ToInt32(GridView4.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Services set Status='Accept' where ServiceID={productID}";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("WaitingINFO.aspx");
            }

            else if (e.CommandName.CompareTo("Rejected") == 0)
            {
                //ScriptManager.RegisterStartupScript(this,GetType(), "Script", "swal('" + "Donation Rejected" + "','error');", true);
                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                                "swal('Thank You !', 'You clicked Success button!', 'success')", true);



                int productID = Convert.ToInt32(GridView4.DataKeys[Convert.ToInt32(e.CommandArgument)].Value);
                var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
                SqlConnection Con = new SqlConnection(connectionString);
                Con.Open();
                string query = $"Update Services set Status='Reject' where ServiceID={productID}";
                SqlCommand rolecommand = new SqlCommand(query, Con);
                rolecommand.ExecuteNonQuery();
                Con.Close();
                Response.Redirect("WaitingINFO.aspx");
            }
        }

        protected void deee(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "alert",
                               "swal('Thank You !', 'You clicked Success button!', 'success')", true);
        }
    }
}