using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Request.QueryString["id"]!=null)
        {
            if (Request.QueryString["id"].ToString() == "register")
            {
                lblerror.Text = "You have registerd Successfully";
            }
            if (Request.QueryString["id"].ToString() == "logout")
            {
                lblerror.Text = "You have Successfully Logged Out";
            }
            if (Request.QueryString["id"].ToString() == "login")
            {
                lblerror.Text = "Please Login";
            }
        }
       
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "Select vPassword from tblusers where vLoginId='"+txtlogin.Text+"'";
        SqlDataReader dr;
        dr= cmd.ExecuteReader();
        if (dr.Read())
        {
            string spassword = dr["vPassword"].ToString();
            if (spassword == txtpassword.Text)
            {
                Page.Session.Add("user", txtlogin.Text);
                Page.Session.Timeout = 20;
                Response.Redirect("UserProfile.aspx?id=success");
            }
            else
            {
                lblerror.Text = "Password is Incorrect"; 
            }
             
        }
        else
        {
            lblerror.Text = "Login Invalid";
        }


    }
}