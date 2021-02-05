using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using System.Configuration;
using logic_namespace;

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    logic obj = new logic();
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from user_cred where email ='" + txt_email.Text + "'and password='" + txt_password.Text + "' ";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            RegisterStartupScript("s", "<script>alert('Logged In...')</script>");
            Session["cust_email"] = txt_email.Text;
            Response.Redirect("home.aspx");
        }
        else
        {
            Label4.Text = "Please enter the registered email or valid Password";
                    }
        con.Close();

        
    }
    
}
