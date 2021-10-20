using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.resume
{
    public partial class personal : System.Web.UI.Page
    {
       /* List<string> langlist = new List<string>();
        List<string> hobbylist = new List<string>();*/
        Database1Entities1 rb = new Database1Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {

            System.Web.UI.HtmlControls.HtmlLink css = new System.Web.UI.HtmlControls.HtmlLink();
            css.Href = "~/css/contact.css";
            css.Attributes["rel"] = "stylesheet";
            css.Attributes["type"] = "text/css";

           
            //on pageload initial values of users creditionals should be displayed
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null && !IsPostBack)
                {
                    Maritalstatus.Text = rt.maritalstatus;
                    Gender.SelectedValue = rt.gender;
                    Birthdate.Text = rt.birthdate.ToString();
                    img.ImageUrl = rt.imagepath;
                }
                /*else
                {
                    //there is no data with that username so first need to enter contact details 
                    Response.Redirect("contact.aspx");
                }*/
                IQueryable<hobby> rt1 = rb.hobbies.Where(r => r.username == u1);
                if (rt1 != null)
                {
                    foreach (hobby i in rt1)
                    {
                        Label lb1 = new Label();
                        lb1.ID = "lg" + i.hobby1;
                        lb1.Text = i.hobby1;
                        Hbs.Controls.Add(lb1);
                        Label lb2 = new Label();
                        lb2.ID = "lg1" + i.hobby1;
                        lb2.Text = "<br />";
                        Hbs.Controls.Add(lb2);
                    }
                }
                IQueryable<language> rt2 = rb.languages.Where(r => r.username == u1);
                if (rt2 != null)
                {
                    foreach (language i in rt2)
                    {
                        Label lb3 = new Label();
                        lb3.ID = "sk" + i.language1;
                        lb3.Text = i.language1;
                        Langs.Controls.Add(lb3);
                        Label lb4 = new Label();
                        lb4.ID = "sk1" + i.language1;
                        lb4.Text = "<br />";
                        Langs.Controls.Add(lb4);
                    }
                }
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            /*if (!IsPostBack)
            {
                /*if (Session["langlist"] != null)
                {
                    langlist = (List<string>)Session["langlist"];
                    foreach (var i in langlist)
                    {
                        Label l1 = new Label();
                        l1.ID = "lang" + i;
                        l1.Text = i;
                        Langs.Controls.Add(l1);
                        Label l2 = new Label();
                        l2.Text = "<br />";
                        Langs.Controls.Add(l2);
                    }
                }
                if (Session["hobbylist"] != null)
                {
                    hobbylist = (List<string>)Session["hobbylist"];
                    foreach (var i in hobbylist)
                    {
                        Label l3 = new Label();
                        l3.ID = "hbs" + i;
                        l3.Text = i;
                        Hbs.Controls.Add(l3);
                        Label l4 = new Label();
                        l4.Text = "<br />";
                        Hbs.Controls.Add(l4);
                    }
                }
            }*/

        }

        protected void Nextbutton_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                /*  Session["maritalstatus"] = Maritalstatus.SelectedValue;
                  Session["gender"] = Gender.SelectedValue;
                  Session["birthdate"] = Birthdate.Text;
                  Response.Redirect("~/resume/contact.aspx");*/
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.gender = Gender.SelectedValue;
                    rt.maritalstatus = Maritalstatus.SelectedValue;
                    rt.birthdate = DateTime.Parse(Birthdate.Text);
                    string imp=null;
                    if ((Imageupload.PostedFile != null) && (Imageupload.PostedFile.ContentLength > 0))
                    {
                        string fn = System.IO.Path.GetFileName(Imageupload.PostedFile.FileName);
                        //string SaveLocation = Server.MapPath("images") + "\\" + fn;
                        try
                        {
                            string myGUID = Guid.NewGuid().ToString();
                            imp = "C:\\Users\\aman\\source\\repos\\Resume Builder\\Resume Builder\\images\\" +myGUID+ fn;
                            //imp =myGUID + fn;
                            Imageupload.PostedFile.SaveAs(imp);
                            rt.imagepath = myGUID + fn;
                            FileUploadStatus.Text = "The file has been uploaded.";
                        }
                        catch (Exception ex)
                        {
                            FileUploadStatus.Text = "Error: " + ex.Message;
                        }
                    }
                    else
                    {
                        FileUploadStatus.Text = "Please select a file to upload.";
                    }
                    rb.SaveChanges();
                    Response.Redirect("education.aspx");
                }
                else
                {
                    //there is no data with that username so first need to enter contact details 
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
            if (Session["Username"] != null)
            {
                /*  Session["maritalstatus"] = Maritalstatus.SelectedValue;
                  Session["gender"] = Gender.SelectedValue;
                  Session["birthdate"] = Birthdate.Text;
                  Response.Redirect("~/resume/contact.aspx");*/
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.gender = Gender.SelectedValue;
                    rt.maritalstatus = Maritalstatus.SelectedValue;
                    rt.birthdate = DateTime.Parse(Birthdate.Text);
                    rb.SaveChanges();
                    Response.Redirect("contact.aspx");
                }
                else
                {
                    //there is no data with that username so first need to enter contact details 
                    Response.Redirect("contact.aspx");
                }
                
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
        }

        protected void Addlang_Click(object sender, EventArgs e)
        {
            /*if (Session["langlist"] != null)
            {
                langlist = (List<string>)Session["langlist"];
               foreach (var i in langlist)
                {
                    Label l5 = new Label();
                    l5.ID = "lang1" + i;
                    l5.Text = i;
                    Langs.Controls.Add(l5);
                    Label l6 = new Label();
                    l6.Text = "<br />";
                    Langs.Controls.Add(l6);
                }
            }
            if (Session["hobbylist"] != null)
            {
                hobbylist = (List<string>)Session["hobbylist"];
                foreach (var i in langlist)
                {
                    Label l8 = new Label();
                    l8.ID = "hbs1" + i;
                    l8.Text = i;
                    Hbs.Controls.Add(l8);
                    Label l7 = new Label();
                    l7.Text = "<br />";
                    Hbs.Controls.Add(l7);
                }
            }
            Label lb1 = new Label();
            lb1.ID = "lg" + Language.Text;
            lb1.Text = Language.Text;
            Langs.Controls.Add(lb1);
            Label lb2 = new Label();
            lb2.ID = "lg1" + Language.Text;
            lb2.Text = "<br />";
            Langs.Controls.Add(lb2);
            langlist.Add(Language.Text);
            Session["langlist"] = langlist;*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                language s1 = new language();
                s1.username = u1;
                s1.language1 = Language.Text;
                rb.languages.Add(s1);
                rb.SaveChanges();
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            Label lb7 = new Label();
            lb7.ID = "lg2" + Language.Text;
            lb7.Text = Language.Text;
            Langs.Controls.Add(lb7);
            Label lb8 = new Label();
            lb8.ID = "lg3" + Language.Text;
            lb8.Text = "<br />";
            Langs.Controls.Add(lb8);
            Language.Text = "";

        }

        protected void Addhbs_Click(object sender, EventArgs e)
        {
            /*if (Session["hobbylist"] != null)
            {
                hobbylist = (List<string>)Session["hobbylist"];
                foreach (var i in hobbylist)
                {
                    Label l9 = new Label();
                    l9.ID = "hbs1" + i;
                    l9.Text = i;
                    Hbs.Controls.Add(l9);
                    Label l10 = new Label();
                    l10.Text = "<br />";
                    Hbs.Controls.Add(l10);
                }
            }
            if (Session["langlist"] != null)
            {
                langlist = (List<string>)Session["langlist"];
                foreach (var i in langlist)
                {
                    Label l11 = new Label();
                    l11.ID = "lang1" + i;
                    l11.Text = i;
                    Langs.Controls.Add(l11);
                    Label l12 = new Label();
                    l12.Text = "<br />";
                    Langs.Controls.Add(l12);
                }
            }
            Label lb3 = new Label();
            lb3.ID = "hb" + Hobbies.Text;
            lb3.Text = Hobbies.Text;
            Hbs.Controls.Add(lb3);
            Label lb4 = new Label();
            lb4.ID = "hb1" + Hobbies.Text;
            lb4.Text = "<br />";
            Hbs.Controls.Add(lb4);
            hobbylist.Add(Hobbies.Text);
            Session["hobbylist"] = hobbylist;*/
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                hobby s1 = new hobby();
                s1.username = u1;
                s1.hobby1 = Hobbies.Text;
                rb.hobbies.Add(s1);
                rb.SaveChanges();
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }
            Label lb5 = new Label();
            lb5.ID = "hb2" + Hobbies.Text;
            lb5.Text = Hobbies.Text;
            Hbs.Controls.Add(lb5);
            Label lb6 = new Label();
            lb6.ID = "hb3" + Hobbies.Text;
            lb6.Text = "<br />";
            Hbs.Controls.Add(lb6);
            Hobbies.Text = "";
        }
        protected void Clear_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rt = rb.resumedatas.Where(r => r.username == u1).FirstOrDefault<resumedata>();
                if (rt != null)
                {
                    rt.birthdate = null;
                    rt.maritalstatus = null;
                    rt.gender = null;
                    rt.imagepath = null;
                    //rb.resumedatas.Remove(rt);
                    rb.SaveChanges();
                    Birthdate.Text = null;
                    Maritalstatus.SelectedValue = null;
                    Gender.SelectedValue = null;
                }
                IQueryable<language> lg = rb.languages.Where(l => l.username == u1);
                if (lg != null)
                {
                    foreach (language l in lg)
                    {
                        rb.languages.Remove(l);
                    }
                    rb.SaveChanges();
                }
                IQueryable<hobby> hb = rb.hobbies.Where(h => h.username == u1);
                if (hb != null)
                {
                    foreach (hobby h in hb)
                    {
                        rb.hobbies.Remove(h);
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