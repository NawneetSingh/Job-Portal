using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ViewResume : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["Admin"] == null)
        {
            Response.Redirect("LoginPage.aspx");
        }
        if (Request.QueryString["del"]!=null)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            cmd.CommandText = "delete from tblresume where iRid="+Request.QueryString["del"].ToString();
            cmd.ExecuteNonQuery();
            Response.Redirect("ViewResume.aspx?id=deleted");
        }
        if(Request.QueryString["id"]!=null)
        {
            if(Request.QueryString["id"].ToString()=="deleted")
            {
                lblerror.Text = "Resume has been Deleted Successsfully";
            }
        }
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }
}