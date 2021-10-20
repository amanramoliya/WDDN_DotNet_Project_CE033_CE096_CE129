using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class contact : System.Web.UI.Page
    {
        Database1Entities1 rb = new Database1Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlLink css = new System.Web.UI.HtmlControls.HtmlLink();
            css.Href = "~/css/contact.css";
            css.Attributes["rel"] = "stylesheet";
            css.Attributes["type"] = "text/css";

          
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null && !IsPostBack)
                {
                    Firstname.Text = rt.firstname;
                    Lastname.Text = rt.lastname;
                    Zipcode.Text = rt.zipcode;
                    Mobileno.Text = rt.mobileno;
                    Email.Text = rt.email;
                    Country.Text = rt.country;
                    City.Text = rt.city;
                    State.Text = rt.state;
                    if (rt.address != null)
                    {
                        Address.Text = rt.address;
                    }
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }

        }

        protected void Backbutton_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                /*Session["firstname"] = Firstname.Text;
                Session["lastname"] = Lastname.Text;
                Session["zipcode"] = Zipcode.Text;
                Session["mobileno"] = Mobileno.Text;
                Session["email"] = Email.Text;
                Session["country"] = Country.Text;
                Session["city"] = City.Text;
                Session["state"] = State.Text;
                if (Address.Text != null)
                {
                    Session["address"] = Address.Text;
                }*/
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt == null)
                {
                    resumedata rs = new resumedata();
                    rs.username = Session["Username"].ToString();
                    rs.firstname = Firstname.Text; ;
                    rs.lastname = Lastname.Text;
                    rs.zipcode = Zipcode.Text;
                    rs.mobileno = Mobileno.Text;
                    rs.email = Email.Text;
                    rs.country = Country.Text;
                    rs.city = City.Text;
                    rs.state = State.Text;
                    if (Address.Text != null)
                    {
                        rs.address = Address.Text;
                    }
                    rb.resumedatas.Add(rs);
                    rb.SaveChanges();
                }
                else
                {
                    rt.firstname = Firstname.Text; ;
                    rt.lastname = Lastname.Text;
                    rt.zipcode = Zipcode.Text;
                    rt.mobileno = Mobileno.Text;
                    rt.email = Email.Text;
                    rt.country = Country.Text;
                    rt.city = City.Text;
                    rt.state = State.Text;
                    if (Address.Text != null)
                    {
                        rt.address = Address.Text;
                    }
                    rb.SaveChanges();
                }

                Response.Redirect("~/exp.aspx");

            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }

        }

        protected void Nextbutton_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                /*Session["firstname"] = Firstname.Text;
                Session["lastname"] = Lastname.Text;
                Session["zipcode"] = Zipcode.Text;
                Session["mobileno"] = Mobileno.Text;
                Session["email"] = Email.Text;
                Session["country"] = Country.Text;
                Session["city"] = City.Text;
                Session["state"] = State.Text;
                if (Address.Text != null)
                {
                    Session["address"] = Address.Text;
                }*/
                string u1 = Session["Username"].ToString();

                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt == null)
                {
                    resumedata rs = new resumedata();
                    rs.username = Session["Username"].ToString();
                    rs.firstname = Firstname.Text; ;
                    rs.lastname = Lastname.Text;
                    rs.zipcode = Zipcode.Text;
                    rs.mobileno = Mobileno.Text;
                    rs.email = Email.Text;
                    rs.country = Country.Text;
                    rs.city = City.Text;
                    rs.state = State.Text;
                    if (Address.Text != null)
                    {
                        rs.address = Address.Text;
                    }
                    rb.resumedatas.Add(rs);
                    rb.SaveChanges();
                }
                else
                {
                    rt.firstname = Firstname.Text; ;
                    rt.lastname = Lastname.Text;
                    rt.zipcode = Zipcode.Text;
                    rt.mobileno = Mobileno.Text;
                    rt.email = Email.Text;
                    rt.country = Country.Text;
                    rt.city = City.Text;
                    rt.state = State.Text;
                    if (Address.Text != null)
                    {
                        rt.address = Address.Text;
                    }
                    rb.SaveChanges();
                }

                Response.Redirect("~/resume/personal.aspx");

            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }

        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            string u1 = Session["Username"].ToString();
            resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
            if (rt != null)
            {
                rt.firstname = null;
                rt.lastname = null;
                rt.zipcode = null;
                rt.mobileno = null;
                rt.email = null;
                rt.country = null;
                rt.city = null;
                rt.state = null;
                rt.address = null;
                //rb.resumedatas.Remove(rt);
                rb.SaveChanges();
                Firstname.Text = null;
                Lastname.Text = null;
                Zipcode.Text = null;
                Mobileno.Text = null;
                Email.Text = null;
                Country.Text = null;
                City.Text = null;
                State.Text = null;
                Address.Text = null;
            }
        }
    }
}