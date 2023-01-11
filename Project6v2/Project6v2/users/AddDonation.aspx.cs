using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;

namespace Project6v2.users
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedValue == "other")
            {
                othercat.Visible= true;
            }
            else { othercat.Visible = false; }

        }

        protected void add_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, GetType(), "Popup", $"message();", true);

            Session["id"] = "10e7c4fa-9de1-4082-abfe-b7d512212f70";
            string path1 = Server.MapPath("~/img/");
            FileUpload1.SaveAs(path1 + Path.GetFileName(FileUpload1.FileName));
            string IMG = "~/img/" + Path.GetFileName(FileUpload1.FileName);
            var connectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            SqlConnection Con = new SqlConnection(connectionString);
            Con.Open();
            string insSERVICE = "insert into Services(ProviderID,ServiceName,Description,Image,Status,ServiceTime,CategoryName,Quantity,LeftQuantity,DonationStatus) " +
                "values(@ProviderID,@ServiceName,@Description,@Image,@Status,@ServiceTime,@CategoryName,@Quantity,@LeftQuantity,@DonationStatus)";

            SqlCommand ss=new SqlCommand(insSERVICE,Con);
            ss.Parameters.AddWithValue("@ProviderID", Session["id"]);
            ss.Parameters.AddWithValue("@ServiceName", ServiceName.Text);
            ss.Parameters.AddWithValue("@Description", Discription.Value);
            ss.Parameters.AddWithValue("@Image", IMG);
            ss.Parameters.AddWithValue("@Status","wait");
            ss.Parameters.AddWithValue("@ServiceTime", DateTime.Now.ToString());
            ss.Parameters.AddWithValue("@CategoryName", DropDownList1.SelectedValue);
            ss.Parameters.AddWithValue("@Quantity", quantity.Text);
            ss.Parameters.AddWithValue("@LeftQuantity", quantity.Text);
            ss.Parameters.AddWithValue("@DonationStatus", DropDownList2.SelectedValue);
            ss.ExecuteNonQuery();
            Con.Close();

            //Response.Redirect("");
        }
    }
}