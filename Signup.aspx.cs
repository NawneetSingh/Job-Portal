using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Signup : System.Web.UI.Page
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
        cmd.CommandText = "Insert into tblusers(vLoginId,vPassword,vName,vAddress,vCountry,vPhone,vMailId,vCollegeName,vUniversityName,vDegree) values('"+txtlogin.Text+"','"+txtpassword.Text+"','"+txtname.Text+"','"+txtaddress.Text+"','"+ddlcountry.SelectedValue.ToString()+"','"+txtphone.Text+"','"+txtmail.Text+"','"+txtcollege.Text+"','"+txtuniversity.Text+"','"+DropDownList1.SelectedValue.ToString()+"')";
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Redirect("Login.aspx?id=register");
      //  lblerror.Text = "You have Registered Successfully";
        
         
    }
}