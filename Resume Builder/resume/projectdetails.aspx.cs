using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class project : System.Web.UI.Page
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
                IQueryable<Resume_Builder.project> rt1 = rb.projects.Where(r => r.username == u1);
                if (rt1 != null)
                {
                    foreach (Resume_Builder.project i in rt1)
                    {
                        Label lb1 = new Label();
                        lb1.ID = "proj" + i.projectname;
                        lb1.Text = i.projectname;
                        lb1.CssClass = "projectsClass";
                        projects.Controls.Add(lb1);
                        Label lb2 = new Label();
                        lb2.ID = "proj1" + i.projectname;
                        lb2.Text = "<br />";
                        projects.Controls.Add(lb2);
                    }
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            /*if (!IsPostBack)
            {
                if (Session["projecttext"] != null)
                {
                    projecttexts = (List<string>)Session["projecttext"];
                    foreach (var i in projecttexts)
                    {
                        Label l1 = new Label();
                        l1.ID = "proj" + i;
                        l1.Text = i;
                        projects.Controls.Add(l1);
                        Label l2 = new Label();
                        l2.Text = "<br />";
                        projects.Controls.Add(l2);
                    }
                }
            }*/


        }
        protected void Addproject_Click(object sender, EventArgs e)
        {
            /*if (Session["projecttext"] != null)
            {
                projecttexts = (List<string>)Session["projecttext"];
                foreach(var i in projecttexts)
                {
                    Label l1 = new Label();
                    l1.ID = "proj" + i;
                    l1.Text = i;
                    projects.Controls.Add(l1);
                    Label l2 = new Label();
                    l2.Text = "<br />";
                    projects.Controls.Add(l2);
                }
            }
            Label lb1 = new Label();
            lb1.ID = "prot" + Projectname.Text;
            lb1.Text = Projectname.Text;
            projects.Controls.Add(lb1);
            Label lb2 = new Label();
            lb2.ID = "pro1" + Projectname.Text;
            lb2.Text = "<br />";
            projects.Controls.Add(lb2);
            projecttexts.Add(Projectname.Text);
            Session["projecttext"] = projecttexts;
            projectdes.Add(Projectdescription.Text);
            Session["projectdescription"] = projectdes;*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                Resume_Builder.project p1 = new Resume_Builder.project();
                p1.username = u1;
                p1.projectname = Projectname.Text;
                p1.projectdetails = Projectdescription.Text;
                if (Projecturl.Text != "")
                {
                    p1.projecturl = Projecturl.Text;
                }
                rb.projects.Add(p1);
                rb.SaveChanges();
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            Label lb3 = new Label();
            lb3.ID = "proj2" + Projectname.Text;
            lb3.Text = Projectname.Text;
            projects.Controls.Add(lb3);
            Label lb4 = new Label();
            lb4.ID = "proj3" + Projectname.Text;
            lb4.Text = "<br />";
            projects.Controls.Add(lb4);
            Projectname.Text = "";
            Projectdescription.Text = "";
            Projecturl.Text = "";
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                IQueryable<Resume_Builder.project> pg = rb.projects.Where(p => p.username == u1);
                if (pg != null)
                {
                    foreach (Resume_Builder.project p in pg)
                    {
                        rb.projects.Remove(p);
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