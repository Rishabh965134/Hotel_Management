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

public partial class Rooms : System.Web.UI.Page
{
    int total_bill,adult,child=0;
    logic obj = new logic();
    float tax;
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        txt_name.Text = (string)Session["custm_name"];
        txt_mobile.Text = (string)Session["cust_mobile"];
        txt_email.Text = (string)Session["cust_email"];
        txt_address.Text = (string)Session["cust_address"];
        radio_gender.Text = (string)Session["cust_gender"];
    }

    protected void ddl_SelectedIndexChanged(object sender, EventArgs e)
    {

        con = new SqlConnection(constr);
        string str = "select roomprice from admin_room where roomtype ='" + ddl.SelectedItem.Value + "'";
        SqlCommand showresult = new SqlCommand(str, con);
        showresult.Parameters.AddWithValue("@roomtype", ddl.SelectedItem.Value);
        con.Open();
        Label10.Text = showresult.ExecuteScalar().ToString();
        con.Close();

    }

    private void bookroom()
    {
        int guest = int.Parse(ddl_adult.SelectedItem.Text) + int.Parse(ddl_adult.SelectedItem.Text);
        string total_guest = guest.ToString();

        
        Session["cust_email"] = txt_email.Text;
        Session["cust_mobile"] = txt_mobile.Text;
        Session["cust_address"] = txt_address.Text;
        Session["custm_name"] = txt_name.Text;
        Session["cust_room_type"] = ddl.Text;
        Session["cust_guest"] = total_guest;
        
        if (ddl_adult.SelectedItem.Text == "1")
        {
            adult = 400;
        }
        else if (ddl_adult.SelectedItem.Text == "2")
        {
            adult = 600;
        }
        else if (ddl_adult.SelectedItem.Text == "3")
        {
            adult = 800;
        }
        else if (ddl_adult.SelectedItem.Text == "4")
        {
            adult = 1000;
        }


        if (ddl_children.SelectedItem.Text == "1")
        {
            child = 300;
        }
        else if (ddl_children.SelectedItem.Text == "2")
        {
            child = 600;
        }


        total_bill = Convert.ToInt32(Label10.Text) + adult + child;

        tax = Convert.ToInt32(total_bill * 18) / 100;

        total_bill += (int)tax;

        obj.executequery("insert into user_room values('" + txt_name.Text + "','" + txt_dob.Text + "','" + radio_gender.Text + "','" + txt_mobile.Text + "','" + txt_email.Text + "','"
            + txt_address.Text + "','" + ddl_state.Text + "','" + ddl_adult.Text + "','" + ddl_children.Text + "','" + ddl.Text + "','"
           + ddl_floor.Text + "','" + txt_entrydate.Text + "','" + txt_entry_time.Text + "','" + txt_depdate.Text + "','" + txt_dept_time.Text + "','" + total_bill + "')");


        Session["total_bill"] = total_bill.ToString();
        Session["room_tax"] = tax.ToString();

        Session["cust_food_price"] = "N/A";

        

    }

    
    protected void btn_book_Click(object sender, EventArgs e)
    {
          con = new SqlConnection(constr);
          con.Open();
          SqlCommand cmd = new SqlCommand();
          cmd.CommandText = "select * from user_cred where email ='" + txt_email.Text + "' ";
          cmd.Connection = con;
          SqlDataReader rd = cmd.ExecuteReader();
          if (rd.HasRows)
          {

              bookroom();
              Response.Redirect("userorder.aspx");
          }
          else
          {
              RegisterStartupScript("msg", "<script>alert('Register first' )</script>");

          }

          
        bookroom();
        Response.Redirect("userorder.aspx");

    }

    protected void btn_order_Click(object sender, EventArgs e)
    {
          con = new SqlConnection(constr);
           con.Open();
           SqlCommand cmd = new SqlCommand();
           cmd.CommandText = "select * from user_cred where email ='" + txt_email.Text + "' ";
           cmd.Connection = con;
           SqlDataReader rd = cmd.ExecuteReader();
           if (rd.HasRows)
           {

               bookroom();
               Response.Redirect("usermenu.aspx");
           }
           else
           {
               RegisterStartupScript("msg", "<script>alert('Register or Login first' )</script>");

           }
           
        bookroom();
        Response.Redirect("usermenu.aspx");

    }





}