using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            userdbEntities ub = new userdbEntities();
            if (Session["Username"] != null)
            {
                string uname = Session["Username"].ToString();
                User u = ub.user.Where(s => s.Username == uname).FirstOrDefault<User>();
                if (u != null)
                {
                    Label1.Text = u.Username;
                    Label2.Text = u.Email;
                    Label3.Text = u.MobileNo;
                }
                else
                {
                    Response.Redirect("signup.aspx");
                }

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void delete_account_Click(object sender, EventArgs e)
        {
            Response.Redirect("delete.aspx");
        }

        protected void update_button_Click(object sender, EventArgs e)
        {

            Response.Redirect("update.aspx");
        }
    }
}