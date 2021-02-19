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


public partial class Admin_Menus : System.Web.UI.Page
{
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    logic obj = new logic();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_add_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_menu_items", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_insert");
        cmd.Parameters.AddWithValue("@itemtype", TextBox1.Text.ToString());
        cmd.Parameters.AddWithValue("@itemname", TextBox2.Text.ToString());
        cmd.Parameters.AddWithValue("@itemprice", TextBox3.Text.ToString());
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert(' Items Added Successfully..' )</script>");

    }

    protected void btn_view_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from admin_menu", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
           con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_menu_items", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_delete");
        cmd.Parameters.AddWithValue("@itemtype", TextBox1.Text);
        cmd.Parameters.AddWithValue("@itemname", TextBox2.Text);
        cmd.Parameters.AddWithValue("@itemprice", TextBox3.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        
        RegisterStartupScript("msg", "<script>alert('Delete Items Successfully' )</script>");

    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_menu_items", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_update");

        cmd.Parameters.Add("@itemtype", SqlDbType.NChar).Value = TextBox1.Text.ToString();
        cmd.Parameters.Add("@itemname", SqlDbType.NChar).Value = TextBox2.Text.ToString();
        cmd.Parameters.Add("@itemprice", SqlDbType.NChar).Value = TextBox3.Text.ToString();
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Update Items Successfully' )</script>");

    }

    protected void btn_search_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from admin_menu where itemname='" + TextBox2.Text + "'", con);
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
        TextBox3.Text = "";

    }
}