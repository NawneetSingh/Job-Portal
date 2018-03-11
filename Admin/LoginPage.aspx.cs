using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_LoginPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            if (Request.QueryString["id"].ToString() == "LoginRequired")
            {
                lblerror.Text = "Please Login";
            }
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
       if(txtlogin.Text=="Admin" && txtpassword.Text=="admin")
        {
            Page.Session.Add("Admin", txtlogin.Text);
            Response.Redirect("Home.aspx");
        }
       else
        {
            lblerror.Text = "Please Enter Correct Credentials";
        }
    }
}