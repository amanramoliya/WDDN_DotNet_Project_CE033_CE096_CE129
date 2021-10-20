using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder
{
    public partial class yes_templates : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void template1_Click(object sender, ImageClickEventArgs e)
        {
            Session["templatenumber"] = "/yes/template1.aspx";
            Response.Redirect("~/resume/contact.aspx");

        }

        protected void template2_Click(object sender, ImageClickEventArgs e)
        {
            Session["templatenumber"] = "/yes/template2.aspx";
            Response.Redirect("~/resume/contact.aspx");

        }
    }
}