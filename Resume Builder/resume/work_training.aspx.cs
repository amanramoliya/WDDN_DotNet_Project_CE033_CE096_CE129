using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class work_history : System.Web.UI.Page
    {
        Database1Entities1 rb = new Database1Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            System.Web.UI.HtmlControls.HtmlLink css = new System.Web.UI.HtmlControls.HtmlLink();
            css.Href = "~/css/contact.css";
            css.Attributes["rel"] = "stylesheet";
            css.Attributes["type"] = "text/css";
            /*if (Session["jobtitle"] != null && !IsPostBack)
            {
                jobtitle.Text = Session["jobtitle"].ToString();
                employer.Text = Session["employer"].ToString();
                city.Text = Session["jobcity"].ToString();
                state.Text = Session["jobstate"].ToString();
                startdate.Text = Session["startdate"].ToString();
                if (Session["current"].ToString()=="false")
                {
                    enddate.Text = Session["enddate"].ToString();
                    current.Checked = false;
                }
                else
                {
                    current.Checked = true;
                }

            }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null && !IsPostBack)
                {
                    jobtitle.Text = rt.jobtitle;
                    city.Text = rt.wcity;
                    employer.Text = rt.employeer;
                    state.Text = rt.wstate;
                    if (rt.startyear != null)
                    {
                        startdate.Text = rt.startyear.ToString();
                    }
                    if (rt.currentjob == "true")
                    {
                        current.Checked = true;
                    }
                    else
                    {
                        if (rt.endyear != null)
                        {
                            enddate.Text = rt.endyear.ToString();
                        }
                        current.Checked = false;   
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

        protected void Next_Click(object sender, EventArgs e)
        {
            /*if (jobtitle.Text != null)
            {
                if (Session["Username"] != null)
                {
                    Session["jobtitle"] = jobtitle.Text;
                    Session["employer"] = employer.Text;
                    Session["jobcity"] = city.Text;
                    Session["jobstate"] = state.Text;
                    Session["startdate"] = startdate.Text;
                    if (current.Checked)
                    {
                        Session["enddate"] = null;
                        Session["current"] = current.Checked;
                    }
                    else
                    {
                        Session["enddate"] = enddate.Text;
                        Session["current"] = current.Checked;
                    }
                    Response.Redirect("projectdetails.aspx");

                }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.jobtitle= jobtitle.Text;
                    rt.wcity= city.Text;
                    rt.employeer= employer.Text;
                    rt.wstate= state.Text;
                    if (startdate.Text != "")
                    {
                        rt.startyear = DateTime.Parse(startdate.Text);
                    }
                    if (current.Checked == true)
                    {
                        rt.currentjob = "true";
                    }
                    else
                    {
                        if (enddate.Text != "")
                        {
                            rt.endyear = DateTime.Parse(enddate.Text);

                        }
                        rt.currentjob = "false";
                    }
                    rb.SaveChanges();
                    Response.Redirect("~/resume/projectdetails.aspx");
                }
                /*else
                {
                    //there is no data with that username so first need to enter contact details 
                    Response.Redirect("contact.aspx");
                }*/

            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {
                Session["jobtitle"] = jobtitle.Text;
                Session["employer"] = employer.Text;
                Session["jobcity"] = city.Text;
                Session["jobstate"] = state.Text;
                Session["startdate"] = startdate.Text;
                if (current.Checked)
                {
                    Session["enddate"] = null;
                    Session["current"] = current.Checked;
                }
                else
                {
                    Session["enddate"] = enddate.Text;
                    Session["current"] = !current.Checked;
                }
                Response.Redirect("skills.aspx");

            }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.jobtitle = jobtitle.Text;
                    rt.wcity = city.Text;
                    rt.employeer = employer.Text;
                    rt.wstate = state.Text;
                    if (startdate.Text != "")
                    {
                        rt.startyear = DateTime.Parse(startdate.Text);
                    }
                    if (current.Checked == true)
                    {
                        rt.currentjob = "true";
                    }
                    else
                    {
                        if (enddate.Text != "")
                        {
                            rt.endyear = DateTime.Parse(enddate.Text);

                        }
                        rt.currentjob = "false";
                    }
                    rb.SaveChanges();
                    Response.Redirect("~/resume/skills.aspx");
                }
                /*else
                {
                    //there is no data with that username so first need to enter contact details 
                    Response.Redirect("contact.aspx");
                }*/

            }
            else
            {
                Response.Redirect("login.aspx");
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
                    rt.jobtitle = null;
                    rt.startyear = null;
                    rt.endyear = null;
                    rt.employeer = null;
                    rt.currentjob = null;
                    rt.wcity = null;
                    rt.wstate = null;
                    //rb.resumedatas.Remove(rt);
                    rb.SaveChanges();
                    jobtitle.Text = null;
                    city.Text = null;
                    employer.Text = null;
                    state.Text = null;
                    startdate.Text = null;
                    enddate.Text = null;
                    current.Checked = false;
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
    }
}