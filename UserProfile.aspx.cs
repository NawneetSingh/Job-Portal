using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UserProfile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.Session["user"]==null)
        {
            Response.Redirect("Login.aspx?id=login");
        }
        if(Request.QueryString["id"]!=null)
        {
            if(Request.QueryString["id"].ToString()=="success")
            {
                lblerror.Text = "Logged in Successfully";
                 
            }
        }
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }
}