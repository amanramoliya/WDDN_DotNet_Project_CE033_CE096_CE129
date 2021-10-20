using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("home.aspx");
            }
            System.Web.UI.HtmlControls.HtmlLink css = new System.Web.UI.HtmlControls.HtmlLink();
            css.Href = "~/css/login.css";
            css.Attributes["rel"] = "stylesheet";
            css.Attributes["type"] = "text/css";
            // css.Attributes["media"] = "all"; //add any attributes as needed
            Master.Page.Header.Controls.Add(css);
        }

        protected void login_button_Click(object sender, EventArgs e)
        {
            userdbEntities ub = new userdbEntities();
            string uname = username.Text;
            User u = ub.user.Where(s => s.Username == uname).FirstOrDefault<User>();
            if (u != null)
            {
                if (password.Text == u.Password)
                {
                    Session["Username"] = username.Text;
                    Response.Redirect("home.aspx");
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}