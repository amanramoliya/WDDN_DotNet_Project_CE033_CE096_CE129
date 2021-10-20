using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class summary : System.Web.UI.Page
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
                    Carrerobjective.Text= rt.carrerobj;
                    summarytb.Text = rt.summary;
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
            /*if (!IsPostBack)
            {
                if (Session["Username"] != null)
                {
                    if (Session["carrerobjective"] != null)
                    {
                        Carrerobjective.Text=Session["carrerobjective"].ToString();
                    }
                    if (Session["_summary"] != null)
                    {
                        summarytb.Text = Session["_summary"].ToString();
                    }
                    
                }

            }*/

        }

        protected void Backbutton_Click(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {
                Session["carrerobjective"] = Carrerobjective.Text;
                Session["_summary"] = summarytb.Text;
                Response.Redirect("projectdetails.aspx");
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    if (Carrerobjective != null)
                    {
                        rt.carrerobj = Carrerobjective.Text;
                    }
                    if (summarytb != null)
                    {
                        rt.summary = summarytb.Text;
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

        protected void Nextbutton_Click(object sender, EventArgs e)
        {
            /*if (Session["Username"] != null)
            {
                Session["carrerobjective"] = Carrerobjective.Text;
                Session["_summary"] = summarytb.Text;
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    if (Carrerobjective != null)
                    {
                        rt.carrerobj = Carrerobjective.Text;
                    }
                    if (summarytb != null)
                    {
                        rt.summary = summarytb.Text;
                    }
                    rb.SaveChanges();
                    string navurl = "~/final/" + Session["templatenumber"].ToString();
                    Response.Redirect(navurl);
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
                    rt.carrerobj = null;
                    rt.summary = null;
                    //rb.resumedatas.Remove(rt);
                    rb.SaveChanges();
                    Carrerobjective.Text = null;
                    summarytb.Text = null;
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
    }
}