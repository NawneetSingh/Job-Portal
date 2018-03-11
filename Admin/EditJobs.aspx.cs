using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_EditJobs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Page.Session["Admin"]==null)
        {
            Response.Redirect("LoginPage.aspx");
        }
        if (Request.QueryString["edit"] != null)
        { 
            if(!IsPostBack)
            {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "select * from tbljobs where iJid=" + Request.QueryString["edit"].ToString();
        SqlDataReader dr= cmd.ExecuteReader();
            if(dr.Read())
            {
                txttitle.Text = dr["vJobTitle"].ToString();
                txtDes.Text = dr["tDescription"].ToString();
                txtapply.Text = dr["dLastDate"].ToString();
                txtpost.Text = dr["iNoOfPost"].ToString();
               txtqual.Text = dr["vRequiredQualification"].ToString();
                txtexp.Text = dr["vRequiredExp"].ToString();
            }
            con.Close();
            }
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if(Request.QueryString["edit"]!=null)
        {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "update tbljobs set vJobTitle='"+txttitle.Text+"',tDescription='"+txtDes.Text+"',dLastDate='"+txtapply.Text+"',iNoOfPost='"+txtpost.Text+"',vRequiredQualification='"+txtqual.Text+"',vRequiredExp='"+txtexp.Text+"' where iJid="+Request.QueryString["edit"].ToString()+"";
        cmd.ExecuteNonQuery();
            con.Close();
            Response.Redirect("Viewjobs.aspx?id=updated");
        }
    }
}