using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["DIO"] = "6065893e-3527-4693-917e-c0ab0fa8445b";
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            FileUpload fileUpload = GridView1.Rows[e.RowIndex].FindControl("FileUpload1") as FileUpload;
            fileUpload.SaveAs(System.IO.Path.Combine(Server.MapPath("img"), fileUpload.FileName));
            SqlDataSource1.UpdateParameters["Image"].DefaultValue = "~/img/" + fileUpload.FileName;
            DropDownList DL = GridView1.Rows[e.RowIndex].FindControl("DropDownList5") as DropDownList;

            SqlDataSource1.UpdateParameters["CategoryName"].DefaultValue = DL.SelectedValue; ;

            SqlDataSource1.Update();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //foreach(TableRow xx in GridView1.Rows)
            //{
            //    xx.Cells[7].Text = "Accept";
            //    if (xx.Cells[5].Text == "1")
            //    {
            //        xx.Cells[5].Text = "Accept";
            //    }
            //    //else if (xx.Cells[5].Text == "0")
            //    //{
            //    //    xx.Cells[5].Text = "Waiting";

            //    //}
            //    //else if (xx.Cells[5].Text == "3")
            //    //{
            //    //    xx.Cells[5].Text = "Rejected";

            //    //}
            //}
          
        }

        protected void GridView1_DataBinding(object sender, EventArgs e)
        {
           
        }
    }
}