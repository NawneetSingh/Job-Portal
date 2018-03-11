using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_AddNewJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.Session["Admin"]==null)
        {
            Response.Redirect("LoginPage.aspx");
        }
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        try
        { 
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "Insert into tbljobs(vJobTitle,tDescription,dLastDate,iNoOfPost,vRequiredQualification,vRequiredExp) values('"+txttitle.Text+"','"+txtDes.Text+"','"+txtapply.Text+"','"+txtpost.Text+"','"+txtqual.Text+"','"+txtexp.Text+"')";
        cmd.ExecuteNonQuery();
        Response.Redirect("Viewjobs.aspx?id=Added");
        }
        catch(Exception ex)
        {
            lblerror.Text = "Error" + ex.Message;
        }
    }
}