using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using logic_namespace;

public partial class register : System.Web.UI.Page
{
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    logic obj = new logic();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["custm_name"] = txt_name.Text;
        Session["cust_email"] = txt_email.Text;
        Session["cust_mobile"] = txt_mobile.Text;
        Session["cust_address"] = txt_address.Text;
        Session["cust_gender"] = ddl_gender.SelectedItem.Value;
    }

    protected void btn_signUp_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from user_cred where email ='" + txt_email.Text + "'or mobile='"+txt_mobile.Text+"' ";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Label4.Text = "Please Check the Email or Mobile No Again";
        }
        else
        {
            obj.executequery("insert into user_cred values('" + ddl_gender.Text + "','" + txt_name.Text + "','" + txt_mobile.Text + "','"+txt_address.Text+"','" + txt_email.Text + "','" + txt_password.Text + "')");
            RegisterStartupScript("s", "<script>alert('Waoo you've successfully registered to Glenn Manor...')</script>");

            Response.Redirect("home.aspx");

        }


    }
}