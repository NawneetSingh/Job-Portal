using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Text.RegularExpressions;

public partial class ResumeBuilder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.Session["user"] == null)
        {
            Response.Redirect("Login.aspx?id=login");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        cmd.CommandText = "Select * from tblusers where vloginId='" + Page.Session["user"].ToString() + "'";
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            txtname.Text = dr["vName"].ToString();
            txtaddress.Text = dr["vAddress"].ToString();
            txtphone.Text = dr["vPhone"].ToString();
            txtmail.Text = dr["vMailId"].ToString();
        }
        con.Close();
    }

    protected void btnsubmit_Click(object sender, EventArgs e)
    {
       string eFilename= uploadResumeFile();
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["jobportalConnectionString"].ToString());
        con1.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.Connection = con1;
        cmd1.CommandText = "Insert into tblresume(vName,vAddress,vCountry,vPhone,vMailId,v10th,v12th,vGraduation,vPostGraduation,vResume,vJobId)values('"+txtname.Text+"','"+txtaddress.Text+"','"+ddlcountry.SelectedValue.ToString()+"','"+txtphone.Text+"','"+txtmail.Text+"','"+txt10.Text+"','"+txt12.Text+"','"+txtgraduation.Text+"','"+txtpostgraduation.Text+"','"+eFilename+"','"+Request.QueryString["id"].ToString()+"')";
        cmd1.ExecuteNonQuery();
        Response.Redirect("Resumeuploaded.aspx");
    }
    public string uploadResumeFile()
    {
        if (Uploadfile.HasFile)
        {
            Regex fileExtension = new Regex(@"^.+\.(doc|docx|Pdf|text)");
            Match MatchResult = fileExtension.Match(Uploadfile.FileName);
            if (MatchResult.Success)
            {
                Uploadfile.SaveAs(Server.MapPath("Resume/" + Page.Session["user"].ToString() + Uploadfile.FileName));
            }
            else
            {
                LblFileError.Text = "Please Select a .doc/.docx/.pdf/.text file only";
            }
        }
        return Page.Session["user"].ToString() + Uploadfile.FileName;

    }
}
