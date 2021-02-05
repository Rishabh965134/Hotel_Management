using System;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class usermenu : System.Web.UI.Page
{
    String s = "";
    static String name = "";

    int itax ;
    string itemprice;
    string itemname;
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)

    {
            txtname.Text = (string)Session["custm_name"];
            txtphn.Text = (string)Session["cust_mobile"];
            txtadd.Text = (string)Session["cust_address"];
            txtemail.Text = (string)Session["cust_email"];
      
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        itemname = GridView1.SelectedRow.Cells[1].Text;
        itemprice = GridView1.SelectedRow.Cells[2].Text;
        Label7.Text = itemname;
        Label8.Text = itemprice;
         name= txtname.Text;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        if ((string)Session["custm_name"] != txtname.Text.ToString())
        {
            Session["custm_name"] = txtname.Text;
        }

        con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from user_cred where email ='" + txtemail.Text + "' ";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            orderfood();
            Response.Redirect("userorder.aspx");
        }
        else
        {
            RegisterStartupScript("msg", "<script>alert('Register or Login first' )</script>");
        }
    }

        private void orderfood()
        {
        itemprice = Label8.Text.ToString();
        itax = (Convert.ToInt32(itemprice) * 8) / 100;
        itemprice += (int)itax;

        Session["cust_item_type"] = DropDownList1.SelectedValue;
        Session["cust_item_name"] = Label7.Text;
        Session["cust_food_price"] = Label8.Text;
        Session["food_tax"] = itax.ToString();
        RegisterStartupScript("msg", "<script>alert('Your order is booked' )</script>");

        }

    protected void Button4_Click(object sender, EventArgs e)
    {
        /*     string[] str;

        foreach (GridViewRow grow in GridView2.Rows)
        {
            var chckbxselect = grow.FindControl("CheckBox1") as CheckBox;
            if (chckbxselect.Checked)
            {
                con = new SqlConnection(constr);
                con.Open();

                     str = new string[GridView2.Rows.Count];
                     for (int i = 0; i < GridView2.Rows.Count; i++)
                     {
                         str[i] = GridView2.Rows[i].Cells[1].Text;

                          s = s+str[i];

                     }

                     //Label10.Text = str[1].ToString();
                     Label10.Text = s;



                     string data1 = ("insert into user_menu values(@food_item,@food_price)");
                     SqlCommand cmd = new SqlCommand(data1, con);
                     cmd.Parameters.AddWithValue("@food_item", (grow.FindControl("lbl_food_name") as Label).Text);
                     cmd.Parameters.AddWithValue("@food_price", (grow.FindControl("lbl_food_price") as Label).Text);

                     cmd.ExecuteNonQuery();


            }
        }

         }*/
    }


}
