using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Resume_Builder.user
{
    public partial class forgot : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void sendmail_Click(object sender, EventArgs e)
        {
            userdbEntities ub = new userdbEntities();
            if (ub.user.Where(se => se.Email == email.Text).FirstOrDefault<User>() != null)
            {
                // email Exist
                try
                {
                    string myGUID = Guid.NewGuid().ToString();
                    forgotdbEntities fb = new forgotdbEntities();
                    forgotpass f= new forgotpass();
                    f.Email = email.Text;
                    f.Uid = myGUID;
                    //f.ReqDateTime = new System.DateTime();
                    fb.forgotpass.Add(f);
                    fb.SaveChanges();

                    string tomail = email.Text;
                    string mailbody = "Hi, Click this link to reset you password https://localhost:44313/user/reset.aspx?Uid=" + myGUID;
                    MailMessage Resmail = new MailMessage("fineartgallery06@gmail.com",tomail);
                    Resmail.Body = mailbody;
                    Resmail.IsBodyHtml = true;
                    Resmail.Subject = "Reset Password";
                    Resmail.Priority = MailPriority.High;
                    SmtpClient SMTP = new SmtpClient("smtp.gmail.com",587);
                    SMTP.DeliveryMethod = SmtpDeliveryMethod.Network;
                    SMTP.UseDefaultCredentials = false;
                    SMTP.Credentials = new NetworkCredential()
                    {
                        UserName="fineartgallery06@gmail.com",
                        Password="Artgallery#1221"
                    };
                    SMTP.EnableSsl = true;
                    SMTP.Send(Resmail);
                    Alert.show("Mail Sent Successfully");
                    //Response.Redirect("login.aspx");
                }
                catch (Exception)
                {
                    Alert.show("Can't sent mail please try again");
                    //Response.Redirect("home.aspx");
                }

            }
            
        }
    }
}