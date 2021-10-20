using iTextSharp.text;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.pdf;
using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.final
{
    public partial class template1 : System.Web.UI.Page
    {
        Database1Entities1 rb = new Database1Entities1();
        protected void Page_Load(object sender, EventArgs e)
        {
            _carrerobjective.Font.Bold = true;
            firstname.Font.Bold = true;
            lastname.Font.Bold = true;
            firstname.Font.Size = 18;
            lastname.Font.Size = 18;
            _projects.Font.Bold = true;
            _education.Font.Bold = true;
            _personal.Font.Bold = true;
            if (Session["Username"] != null)
            {
                string u1 = Session["Username"].ToString();
                resumedata rs = rb.resumedatas.Where(u => u.username == u1).FirstOrDefault<resumedata>();
                if (rs != null)
                {
                    firstname.Text = rs.firstname;
                    lastname.Text = rs.lastname;
                    email.Text = rs.email;
                    mobileno.Text = rs.mobileno;
                    carrerobjective.Text = rs.carrerobj;
                    Birthdate.Text = rs.birthdate.ToString();
                    Country.Text = rs.country;
                    Maritalstatus.Text = rs.maritalstatus;
                    Gender.Text = rs.gender;
                    Address.Text = rs.address;
                    City.Text = rs.city;
                    State.Text = rs.state;
                    A_country.Text = rs.country;
                    IQueryable<project> s1 = rb.projects.Where(s=>s.username==u1);
                    foreach(project i in s1)
                    {
                        Label lb1 = new Label();
                        lb1.ID = "pj" + i.projectname;
                        lb1.Text = i.projectname +":  "+i.projectdetails;
                        ps.Controls.Add(lb1);
                        Label lb2 = new Label();
                        lb2.ID = "pj1" + i.projectname;
                        lb2.Text = "<br />";
                        ps.Controls.Add(lb2);
                    }
                    IQueryable<language> l1 = rb.languages.Where(l => l.username == u1);
                    foreach (language i in l1)
                    {
                        Label lb3 = new Label();
                        lb3.ID = "lng" + i.language1;
                        lb3.Text = i.language1 + "  " ;
                        Language.Controls.Add(lb3);
                    }
                    IQueryable<hobby> h1 = rb.hobbies.Where(h =>h.username == u1);
                    foreach (hobby i in h1)
                    {
                        Label lb4 = new Label();
                        lb4.ID = "hb" + i.hobby1;
                        lb4.Text = i.hobby1 + "  ";
                        Hobby.Controls.Add(lb4);
                    }
                    sign.Text = rs.firstname + " " + rs.lastname;
                }
                date.Text = DateTime.Now.ToLongDateString();
            }
            else
            {
                Response.Redirect("~/user/login.aspx");
            }

        }

        protected void Download_Click(object sender, EventArgs e)
        {
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=resume.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            StringWriter sw = new StringWriter();
            HtmlTextWriter hw = new HtmlTextWriter(sw);

            panelPDF.RenderControl(hw);
            StringReader sr = new StringReader(sw.ToString());
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 100f, 10f);
            HTMLWorker htmlParser = new HTMLWorker(pdfDoc);
            PdfWriter.GetInstance(pdfDoc, Response.OutputStream);

            pdfDoc.Open();
            htmlParser.Parse(sr);
            pdfDoc.Close();

            Response.Write(pdfDoc);
            Response.End();
        }

        public override void VerifyRenderingInServerForm(Control control)
        {
            return;
        }
    }
}