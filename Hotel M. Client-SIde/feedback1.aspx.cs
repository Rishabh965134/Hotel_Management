using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class feedback1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source = 192.169.1.218\SQL2016; Initial Catalog = agra_project; User ID = sa; Password = welcome3#");
        con.Open();
        SqlCommand cmd = new SqlCommand("insert into feedback values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" 
            + RadioButtonList1.Text + "','" + RadioButtonList2.Text + "','" + RadioButtonList3.Text + "','" + RadioButtonList4.Text + "', '"
            + RadioButtonList5.Text + "', '" + RadioButtonList6.Text + "','" + TextBox4.Text + "')", con);
        cmd.ExecuteNonQuery();

        RegisterStartupScript("s", "<script>alert('You have Successfully submit Feedback' )</script>");
    }



    protected void Button2_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        RadioButtonList1.SelectedIndex = -1;
        RadioButtonList2.SelectedIndex = -1;
        RadioButtonList3.SelectedIndex = -1;
        RadioButtonList4.SelectedIndex = -1;
        RadioButtonList5.SelectedIndex = -1;
        RadioButtonList6.SelectedIndex = -1;
    }
}