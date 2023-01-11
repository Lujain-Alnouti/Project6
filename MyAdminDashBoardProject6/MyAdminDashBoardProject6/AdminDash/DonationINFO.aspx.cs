using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject6
{
    public partial class DonationINFO : System.Web.UI.Page
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

        protected void GridView3_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DropDownList DL3 = GridView3.Rows[e.RowIndex].FindControl("DropDownList3") as DropDownList;

            SqlDataSource3.UpdateParameters["Status"].DefaultValue = DL3.SelectedValue;

            SqlDataSource3.Update();
        }
    }
}