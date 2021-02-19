using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using logic_namespace;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class Admin_Orders : System.Web.UI.Page
{
    logic obj = new logic();
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from user_orders", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }


    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text != "")
        {
            con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from user_orders where name='"+TextBox1.Text+"'", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        if (TextBox2.Text != "")
        {
            con = new SqlConnection(constr);
            SqlCommand cmd = new SqlCommand("select * from user_orders where receipt_date ='" + TextBox2.Text + "'", con);
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }
        
    }
}