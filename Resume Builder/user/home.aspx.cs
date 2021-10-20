using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class home : System.Web.UI.Page
    {
        //public string bval;
        protected void Page_Load(object sender, EventArgs e)
        {
            //view_button.Text = Session["Username"].ToString();
            //Page.DataBind();
           

            System.Web.UI.HtmlControls.HtmlLink css = new System.Web.UI.HtmlControls.HtmlLink();
            css.Href = "~/css/home.css";
            css.Attributes["rel"] = "stylesheet";
            css.Attributes["type"] = "text/css";
            // css.Attributes["media"] = "all"; //add any attributes as needed
            Master.Page.Header.Controls.Add(css);
            view_button.DataBind();
           
        }

        protected void view_button_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Response.Redirect("view.aspx");
            }
            else
            {
                Response.Redirect("login.aspx");
            }

        }
    }
}