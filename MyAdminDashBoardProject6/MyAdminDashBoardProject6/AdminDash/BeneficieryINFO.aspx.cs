using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyProject6
{
    public partial class BeneficieryINFO : System.Web.UI.Page
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
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            DropDownList DL = GridView1.Rows[e.RowIndex].FindControl("DropDownList1") as DropDownList;

            SqlDataSource1.UpdateParameters["UserStatus"].DefaultValue = DL.SelectedValue;

            SqlDataSource1.Update();
        }
    }
}