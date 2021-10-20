using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class education : System.Web.UI.Page
    {
        Database1Entities1 rb = new Database1Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
           
            /*if(Session["edustate"]!=null && !IsPostBack)
            {
                State.Text = Session["edustate"].ToString();
                City.Text= Session["educity"].ToString();
                College.Text = Session["college"].ToString();
                Board.Text= Session["university"].ToString();
                Qualification.Text= Session["qualification"].ToString();
                Field.Text= Session["field"].ToString();
                Passingyear.Text= Session["passingyear"].ToString();
                if (Session["cgpa"] != null)
                {
                    Cgpa.Text = Session["cgpa"].ToString();
                }
                if (Session["currentstudy"].Equals(true))
                {
                    Current.Checked = true;
                }
                else
                {
                    Current.Checked = false;
                }

            }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null && !IsPostBack)
                {
                    State.Text = rt.ustate;
                    City.Text = rt.ucity;
                    College.Text = rt.school;
                    Board.Text = rt.university;
                    Qualification.Text = rt.qualification;
                    Field.Text = rt.branch;
                    Passingyear.Text = rt.passingyear;
                    Cgpa.Text = rt.cgpa;
                    if (rt.currentstudy == "true")
                    {
                        Current.Checked = true;
                    }
                    else
                    {
                        Current.Checked = false;
                    }
                }
                /*else
                {
                    //there is no data with that username so first need to enter contact details 
                    Response.Redirect("contact.aspx");
                }*/
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }


        }

        protected void Nextbutton_Click(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {
                Session["edustate"] = State.Text;
                Session["educity"] = City.Text;
                Session["college"] = College.Text;
                Session["university"] = Board.Text;
                Session["qualification"] = Qualification.Text;
                Session["field"] = Field.Text;
                Session["passingyear"] = Passingyear.Text;
                if (Cgpa.Text != null)
                {
                    Session["cgpa"] = Cgpa.Text;
                }
                if (Current.Checked)
                {
                    Session["currentstudy"] = true;
                }
                else
                {
                    Session["currentstudy"] = false;
                }
                Response.Redirect("skills.aspx");

            }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.ustate = State.Text;
                    rt.ucity= City.Text;
                    rt.school= College.Text;
                    rt.university= Board.Text;
                    rt.qualification= Qualification.Text;
                    rt.branch= Field.Text;
                    rt.passingyear = Passingyear.Text;
                    rt.cgpa= Cgpa.Text;
                    if (Current.Checked)
                    {
                        rt.currentstudy = "true";
                    }
                    else
                    {
                        rt.currentstudy = "false";
                    }
                    rb.SaveChanges();
                    Response.Redirect("~/resume/skills.aspx");
                }
                else
                {
                    Response.Redirect("contact.aspx");
                }

            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            
        }

        protected void Backbutton_Click(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {
                Session["edustate"] = State.Text;
                Session["educity"] = City.Text;
                Session["college"] = College.Text;
                Session["university"] = Board.Text;
                Session["qualification"] = Qualification.Text;
                Session["field"] = Field.Text;
                Session["passingyear"] = Passingyear.Text;
                if (Cgpa.Text != null)
                {
                    Session["cgpa"] = Cgpa.Text;
                }
                if (Current.Checked)
                {
                    Session["currentstudy"] = true;
                }
                else
                {
                    Session["currentstudy"] = false;
                }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.ustate = State.Text;
                    rt.ucity = City.Text;
                    rt.school = College.Text;
                    rt.university = Board.Text;
                    rt.qualification = Qualification.Text;
                    rt.branch = Field.Text;
                    rt.passingyear = Passingyear.Text;
                    if (Cgpa.Text != null)
                    {
                        rt.cgpa = Cgpa.Text;
                    }
                    if (Current.Checked)
                    {
                        rt.currentstudy = "true";
                    }
                    else
                    {
                        rt.currentstudy = "false";
                    }
                    rb.SaveChanges();
                    Response.Redirect("~/resume/personal.aspx");
                }
                else
                {
                    Response.Redirect("contact.aspx");
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.ucity = null;
                    rt.school = null;
                    rt.cgpa = null;
                    rt.branch = null;
                    rt.qualification = null;
                    rt.passingyear = null;
                    rt.ustate = null;
                    rt.currentstudy = null;
                    //rb.resumedatas.Remove(rt);
                    rb.SaveChanges();
                    City.Text = null;
                    State.Text = null;
                    College.Text = null;
                    Board.Text = null;
                    Qualification.Text = null;
                    Field.Text = null;
                    Passingyear.Text = null;
                    Cgpa.Text = null;
                    Current.Checked = false;
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
    }
}