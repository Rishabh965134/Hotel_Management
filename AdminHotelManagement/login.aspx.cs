using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{

    SqlConnection con;
    string constra = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constra);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from admin_cred where email ='" + txt_email.Text + "'and password='" + txt_password.Text + "' ";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Response.Redirect("home.aspx");

        }
        else
        {
            Label1.Text = "Please Check the Email or Mobile No Again";

        }

    }
}