using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using logic_namespace;


public partial class userorder : System.Web.UI.Page
{
    logic obj = new logic();
    int count1;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        

        /*--------------------------------General Details----------------------*/
        lbl_re.Text = DateTime.Now.Date.ToString("dd-MM-yyyy");

        lbl_name.Text = (string)Session["custm_name"];
        lbl_phn.Text = (string)Session["cust_mobile"];
        lbl_email.Text = (string)Session["cust_email"];
        lbl_address.Text = (string)Session["cust_address"];


        DataSet ds = obj.getDataSet("select max(id) id from user_cred");
        DataRow dr = ds.Tables[0].Rows[0];
        string count = dr["id"].ToString();
        count1 = int.Parse(count) + 1;
        string countf = count1.ToString();
        lbl_renu.Text = countf;

        /*-----------------------------Room Detail------------------------------*/

        lbl_room_type.Text = (string)Session["cust_room_type"];
        room_bill.Text = (string)Session["total_bill"];
        lbl_tax.Text = (string)Session["room_tax"];
        lbl_guest.Text = (string)Session["cust_guest"];

        /*-----------------------------Food Detail------------------------------*/
        lbl_food_type.Text = (string)Session["cust_item_type"];
        lbl_food_item.Text = (string)Session["cust_item_name"];
        lbl_food_price.Text = (string)Session["cust_food_price"];
        lbl_food_tax.Text=(string)Session["food_tax"];

        
        if (lbl_food_price.Text == "N/A")
            {
            int total = Convert.ToInt32(room_bill.Text);
            lbl_totprice.Text = total.ToString();

        }
        else
            {
            int total = Convert.ToInt32(room_bill.Text.ToString()) + Convert.ToInt32(lbl_food_price.Text.ToString())+Convert.ToInt32(lbl_food_tax.Text.ToString());
            lbl_totprice.Text = total.ToString();
        }
        


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
       
        obj.executequery("insert into user_orders values('" + count1 + "','" + lbl_name.Text + "','" + lbl_phn.Text + "','" + lbl_email.Text + "','" + lbl_address.Text + "','" + lbl_renu.Text + "','"
            + lbl_re.Text + "','" + lbl_room_type.Text + "','" + lbl_guest.Text + "','" + lbl_food_item.Text + "','" + lbl_food_price.Text + "','" + lbl_totprice.Text + "')");

        Response.Redirect("payment.aspx");
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

}