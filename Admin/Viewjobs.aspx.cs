using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

public partial class Admin_Viewjobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["Admin"] == null)
        {
            Response.Redirect("LoginPage.aspx");
        }
        if (Request.QueryString["dele"]!=null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from tbljobs where iJid=" + Request.QueryString["dele"].ToString();
            cmd.ExecuteNonQuery();
            Response.Redirect("Viewjobs.aspx?id=delete");             
        }
        if(Request.QueryString["id"]!=null)
        {
            if (Request.QueryString["id"].ToString() == "delete")
            {
                lblerror.Text = "Job Deleted Successfully";
            }
            if (Request.QueryString["id"].ToString() == "Added")
            {
                lblerror.Text = "New Job Added Successfully";
            }
            if (Request.QueryString["id"].ToString() == "updated")
            {
                lblerror.Text = "Job Updated Successfully";
            }
        }

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}