using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void register_Click(object sender, EventArgs e)
        {
            userdbEntities ub = new userdbEntities();
            string uname = username.Text;
            User u1 = ub.user.Where(s => s.Username == uname).FirstOrDefault<User>();
            if (u1 == null)
            {
                if (ub.user.Where(se => se.Email == email.Text).FirstOrDefault<User>() == null)
                {
                    User u = new User();
                    u.Email = email.Text;
                    u.MobileNo = mobileno.Text;
                    u.Password = password.Text;
                    u.Username = username.Text;
                    ub.user.Add(u);
                    ub.SaveChanges();
                    //Session["Username"] = username.Text;
                    //Response.Write("<script>alert('Inserted successfully!')</script>");
                    ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Record Inserted Successfully')", true);
                    Response.Redirect("login.aspx");
                }
                else
                {
                    Alert.show("This Email Already registered");
                    //Response.Redirect("signup.aspx");
                }

            }
            else
            {
                //Response.Redirect("signup.aspx");
                Alert.show("This Username Is Already Taken");
            }
            
        }
    }
}