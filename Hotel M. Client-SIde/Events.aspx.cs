using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using logic_namespace;
using System.Data;

public partial class Events : System.Web.UI.Page
{
    logic obj = new logic();
    SqlConnection con;
    int bill;
    
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        txt_name.Text = (string)Session["custm_name"];
        txt_mobile.Text = (string)Session["cust_mobile"];
       

    }

    protected void ddl_event_SelectedIndexChanged(object sender, EventArgs e)
    {
        con = new SqlConnection(constr);
        string str = "select event_price from admin_event where event_name ='" + ddl_event.SelectedItem.Value + "'";
        SqlCommand showresult = new SqlCommand(str, con);
        showresult.Parameters.AddWithValue("@roomtype", ddl_event.SelectedItem.Value);
        con.Open();
        Label3.Text = showresult.ExecuteScalar().ToString();
        con.Close();
        bill = Convert.ToInt32(Label3.Text);

    }

    protected void Book_Click(object sender, EventArgs e)
    {
        
        con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from user_cred where mobile ='" + txt_mobile.Text + "' ";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            obj.executequery("insert into user_event values('" + txt_name.Text + "','" + txt_mobile.Text + "','" + ddl_event.Text + "','" + txt_start_date.Text + "','" + txt_end_date.Text + "','"
        + txt_time_start.Text + "','" + txt_time_end.Text + "','" + txt_no_of_guest.Text + "','" + bill + "')");
            
            Response.Redirect("payment.aspx");
            RegisterStartupScript("s", "<script>alert('Your Event is Successfully booked...')</script>");
        }
        else
        {
            RegisterStartupScript("s", "<script>alert('Register or Login First...')</script>");
        }



    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from user_event where start_date ='" + txt_enq_date.Text + "'or start_time='" + txt_enq_time.Text + "' ";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            Label2.Text = "Venue is already Booked  ";
        }
        else
        {
            Label2.Text = "Venue is Available ";
        }

     

    }


}