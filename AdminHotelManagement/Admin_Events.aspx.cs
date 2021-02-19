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

public partial class Admin_Events : System.Web.UI.Page
{
    logic obj = new logic();
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_event_type", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_insert");
        cmd.Parameters.Add("@event_name", TextBox1.Text);
        cmd.Parameters.Add("@event_price", TextBox2.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Event Added Successfully' )</script>");


    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_event_type", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_update");

        cmd.Parameters.Add("@event_name", TextBox1.Text);
        cmd.Parameters.Add("@event_price", TextBox2.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Event Updated Successfully' )</script>");

    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_event_type", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_delete");

        cmd.Parameters.Add("@event_name", TextBox1.Text);
        cmd.Parameters.Add("@event_price", TextBox2.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Event Deleted Successfully' )</script>");

    }

    protected void btn_view_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from admin_event", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
}