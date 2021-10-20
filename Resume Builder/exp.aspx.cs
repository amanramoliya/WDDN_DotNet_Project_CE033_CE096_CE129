using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder
{
    public partial class exp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void yesbutton_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["Username"] != null)
            {
                Session["isfresher"] = "false";
                Response.Redirect("~/yes_templates.aspx");
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }

        protected void nobutton_Click(object sender, ImageClickEventArgs e)
        {
            if (Session["Username"] != null)
            {
                Session["isfresher"] = "true";
                Response.Redirect("~/no_templates.aspx");
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }

        }
    }
}