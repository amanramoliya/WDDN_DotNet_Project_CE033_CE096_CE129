using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class skills : System.Web.UI.Page
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
                IQueryable<skill> rt1 = rb.skills.Where(r => r.username == u1);
                if (rt1 != null)
                {
                    foreach (skill i in rt1)
                    {
                        Label lb1 = new Label();
                        lb1.ID = "sk" + i.skill1;
                        lb1.Text = i.skill1;
                        lb1.CssClass = "skillsclass";
                        Skill.Controls.Add(lb1);
                        Label lb2 = new Label();
                        lb2.ID = "sk1" + i.skill1;
                        lb2.Text = "<br />";
                        Skill.Controls.Add(lb2);
                    }
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
                /*if (!IsPostBack)
                {
                    if (Session["texts"] != null)
                    {
                        texts = (List<string>)Session["texts"];
                        foreach (string id in texts)
                        {
                            Label l1 = new Label();
                            l1.ID = "skk" + id;
                            l1.Text = id;
                            Skill.Controls.Add(l1);
                            Label l2 = new Label();
                            l2.Text = "<br />";
                            Skill.Controls.Add(l2);
                        }
                    }
                }*/


            }

        protected void Addbutton_Click(object sender, EventArgs e)
        {
            /*if (Session["texts"] != null)
            {
                texts = (List<string>)Session["texts"];
                foreach (string id in texts)
                {
                    Label l1 = new Label();
                    l1.ID = "skk" + id;
                    l1.Text = id;
                    Skill.Controls.Add(l1);
                    Label l2 = new Label();
                    l2.Text = "<br />";
                    Skill.Controls.Add(l2);
                }
            }
            Label lb1 = new Label();
            lb1.ID = "sk" + Addskill.Text;
            lb1.Text = Addskill.Text;
            Skill.Controls.Add(lb1);
            Label lb2 = new Label();
            lb2.ID = "sk1" + Addskill.Text;
            lb2.Text = "<br />";
            Skill.Controls.Add(lb2);
            texts.Add(Addskill.Text);
            Session["texts"] = texts;
            Addskill.Text = "";*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                skill s1 = new skill();
                s1.username = u1;
                s1.skill1 = Addskill.Text;
                rb.skills.Add(s1);
                rb.SaveChanges();
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            Label lb3 = new Label();
            lb3.ID = "sk2" + Addskill.Text;
            lb3.Text = Addskill.Text;
            Skill.Controls.Add(lb3);
            Label lb4 = new Label();
            lb4.ID = "sk3" + Addskill.Text;
            lb4.Text = "<br />";
            Skill.Controls.Add(lb4);
            Addskill.Text = "";
        }

        protected void Nextbutton_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                if(Session["isfresher"].ToString() == "true")
                {
                    Response.Redirect("projectdetails.aspx");
                }
                else
                {
                    Response.Redirect("work_training.aspx");
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
                IQueryable<skill> sk = rb.skills.Where(r => r.username == u1);
                if (sk != null)
                {
                    foreach (skill i in sk)
                    {
                        rb.skills.Remove(i);
                    }
                    rb.SaveChanges();
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }
    }
}