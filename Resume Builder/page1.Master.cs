using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder
{
    public partial class page1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                LinkButton1.Text = "Logout";
            }
            else
            {
                LinkButton1.Text = "Login";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Session.Clear();
                Response.Redirect("~/user/login.aspx");
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
    }
}