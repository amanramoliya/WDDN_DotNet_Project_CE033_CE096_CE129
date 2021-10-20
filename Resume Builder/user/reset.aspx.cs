using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class reset : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlLink css = new System.Web.UI.HtmlControls.HtmlLink();
            css.Href = "~/css/login.css";
            css.Attributes["rel"] = "stylesheet";
            css.Attributes["type"] = "text/css";

        }

        protected void resetbutton_Click(object sender, EventArgs e)
        {
            string quid = Request.QueryString["Uid"];
            forgotdbEntities fb = new forgotdbEntities();
            forgotpass fs = fb.forgotpass.Where(f => f.Uid == quid).FirstOrDefault<forgotpass>();
            if (fs == null)
            {
                Response.Redirect("forgot.aspx");
            }
            else
            {
                userdbEntities ub = new userdbEntities();
                User u1 = ub.user.Where(s => s.Email == fs.Email).FirstOrDefault<User>();
                u1.Password = newpassword.Text;
                ub.SaveChanges();
                Response.Redirect("login.aspx");
            }
        }
    }
}