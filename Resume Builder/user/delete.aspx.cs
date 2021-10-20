using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class delete : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void delete_acc_Click(object sender, EventArgs e)
        {
            userdbEntities ub = new userdbEntities();
            string uname = username.Text;
            User u = ub.user.Where(s => s.Username == uname).FirstOrDefault<User>();
            if (u != null)
            {
                if (u.Password == password.Text)
                {
                    ub.user.Remove(u);
                    ub.SaveChanges();
                    Response.Redirect("signup.aspx");
                }
                else
                {
                    Response.Redirect("delete.aspx");
                }
            }
            else
            {
                Response.Redirect("delete.aspx");
            }
               
        }
    }
}