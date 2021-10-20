using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class update : System.Web.UI.Page
    {
        userdbEntities ub = new userdbEntities();
        User u;
        protected void Page_Load(object sender, EventArgs e)
        {
            string uname = Session["Username"].ToString();
            u = ub.user.Where(s => s.Username == uname).FirstOrDefault<User>();
            if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    if (u != null)
                    {
                        email.Text = u.Email;
                        mobileno.Text = u.MobileNo;
                        username.Text = u.Username;
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
        }

        protected void update_button_Click(object sender, EventArgs e)
        { 
            if (Session["Username"] != null)
            {
                User u1;
                if(Session["Username"].ToString() != username.Text || u.Email != email.Text)
                {
                    if(Session["Username"].ToString() != username.Text)
                    {
                        u1 = ub.user.Where(s => s.Username == username.Text).FirstOrDefault<User>();
                        if (u1 == null)
                        {

                            u.Email = email.Text;
                            u.MobileNo = mobileno.Text;
                            u.Username = username.Text;
                            ub.SaveChanges();
                            Session["Username"] = username.Text;
                            username.Text = u.Username;
                            email.Text = u.Email;
                            Response.Redirect("home.aspx");


                        }
                        else
                        {
                            //username.Text = u1.Username;
                            //email.Text = u1.Email;
                            Response.Redirect("signup.aspx");
                        }
                    }
                    else
                    {
                        u1 = ub.user.Where(s => s.Email == email.Text).FirstOrDefault<User>();
                        if (u1 == null)
                        {

                            u.Email = email.Text;
                            u.MobileNo = mobileno.Text;
                            u.Username = username.Text;
                            ub.SaveChanges();
                            Session["Username"] = username.Text;
                            username.Text = u.Username;
                            email.Text = u.Email;
                            Response.Redirect("home.aspx");


                        }
                        else
                        {
                            //username.Text = u1.Username;
                            //email.Text = u1.Email;
                            Response.Redirect("signup.aspx");
                        }

                    }
                }
                else
                {
                    Response.Redirect("update.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
}