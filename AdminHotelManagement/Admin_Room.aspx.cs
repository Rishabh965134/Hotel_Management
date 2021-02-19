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

public partial class Admin_Room : System.Web.UI.Page
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
        SqlCommand cmd = new SqlCommand("admin_room_type", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_insert");
        cmd.Parameters.Add("@roomtype", txt_room_type.Text);
        cmd.Parameters.Add("@roomprice", txt_room_price.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Room Added Successfully' )</script>");

    }

    protected void btn_update_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_room_type", con);

        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_update");

        cmd.Parameters.Add("@roomtype", txt_room_type.Text);
        cmd.Parameters.Add("@roomprice", txt_room_price.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Room Updated Successfully' )</script>");

    }

    protected void btn_delete_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("admin_room_type", con);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@StatementType", "sp_delete");

        cmd.Parameters.Add("@roomtype", txt_room_type.Text);
        cmd.Parameters.Add("@roomprice", txt_room_price.Text);
        con.Open();
        cmd.ExecuteNonQuery();
        RegisterStartupScript("msg", "<script>alert('Room Deleted Successfully' )</script>");

    }



    protected void btn_view_items_Click(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand("select * from admin_room", con);
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();


    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btn_reset_Click(object sender, EventArgs e)
    {
        txt_room_type.Text = "";
        txt_room_price.Text = "";
    }
}