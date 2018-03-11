using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserMaster : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.Session["user"]!=null)
        {
            linkloginlogout.Text = "Logout";
            linksignoutsignin.Text = "Profile";
        }
        else
        {
            linkloginlogout.Text = "Login";
            linksignoutsignin.Text = "Signup";
        }
    }
     
    protected void linkloginlogout_Click(object sender, EventArgs e)
    {
        if(linkloginlogout.Text=="Login")
        {
            Response.Redirect("Login.aspx");
        }
       if(linkloginlogout.Text=="Logout")
        {
            Page.Session.Abandon();
            Response.Redirect("Login.aspx?id=logout");
        }
    }

    protected void linksignoutsignin_Click(object sender, EventArgs e)
    {
        if(linksignoutsignin.Text=="Signup")
        {
            Response.Redirect("Signup.aspx");
        }
      if(linksignoutsignin.Text=="Profile")
        {
            Response.Redirect("UserProfile.aspx");
        }
    }
}
