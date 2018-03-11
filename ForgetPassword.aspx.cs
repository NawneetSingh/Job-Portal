using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Configuration;


public partial class ForgetPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from tblusers where vLoginId='"+txtmailid.Text+"'";
        SqlDataReader dr = cmd.ExecuteReader();
        if(dr.Read())
        {
            SendMail(dr["vPassword"].ToString(), dr["vMailId"].ToString());
        }
        else
        {
            lblerror.Text = "Please Enter Correct MailId";
        }
    }
    public void SendMail( string password,string MailId)
    {
        try
        { 
        MailAddress to = new MailAddress(MailId);
        MailAddress from = new MailAddress("Admin@jobportal.com");
        MailMessage msg = new MailMessage(from, to);
        msg.Subject = "Jobportal Account Information";
        msg.Body = "<b>Password</b>" + password;
        msg.IsBodyHtml = true;
        SmtpClient obj = new SmtpClient("localhost",25);
        obj.Send(msg);
        lblerror.Text = "Your Password has been sent to your Mail ID:"+MailId;
        }
        catch(Exception ex)
        {
            lblerror.Text = "Error:"+ex.Message;
        }
    }
}