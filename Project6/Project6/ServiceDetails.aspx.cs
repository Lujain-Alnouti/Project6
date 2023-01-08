using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project6
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void bb_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["ff"] == "1")
            {
                Response.Redirect("UsersInfo.aspx?bb=1");
            }
            else Response.Redirect("UsersInfo.aspx?bb=2");
        }

        protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
        {

        }
    }
}