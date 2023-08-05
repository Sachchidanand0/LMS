using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Drawing;

public partial class contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void send_btn_Click(object sender, EventArgs e)
    {
        try
        {
            SmtpClient sclient = new SmtpClient("smtp.gmail.com", 587);
            sclient.EnableSsl = true;
            sclient.DeliveryMethod = SmtpDeliveryMethod.Network;
            sclient.UseDefaultCredentials = false;
            sclient.Credentials = new NetworkCredential("fridayfun2904@gmail.com", "fiylehxqyprpakoq");
            MailMessage mailMsg = new MailMessage();
            mailMsg.To.Add(txtemail.Text);
            mailMsg.From = new MailAddress("fridayfun2904@gmail.com");
            mailMsg.Subject = txtsub.Text;
            mailMsg.Body = txtmsg.Text;

            sclient.Send(mailMsg);

            status.Text = "Mail sent successfully";



            txtname.Text = "";
            txtemail.Text = "";
            txtsub.Text = "";
            txtmsg.Text = "";

        }

        catch (Exception ex)
        {
            status.Text = "mail did not sent" + ex.Message;
        }
    }
}