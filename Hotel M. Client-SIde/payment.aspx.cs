using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class payment : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (FileUpload1.HasFile)
        {

            FileUpload1.SaveAs(@"D:\NEW\" + FileUpload1.FileName);
        Label2.Text = "Received" + FileUpload1.FileName + " Content Type " ;
        }
        else
        {
            Label2.Text = "No file added";
        }
    }
    protected void btn_CC_Click(object sender, EventArgs e)
    {
        if (TextBox6.Text != null && TextBox7.Text != null && TextBox8.Text != null && TextBox9.Text != null)
        {
            RegisterStartupScript("msg", "<script>alert('Payment Successfull' )</script>");

        }
    }

    protected void btn_DC_Click(object sender, EventArgs e)
    {
        if (TextBox2.Text != null && TextBox3.Text != null && TextBox4.Text != null && TextBox5.Text != null)
        {
            RegisterStartupScript("msg", "<script>alert('Payment Successfull' )</script>");

        }
    }

    protected void btn_upi_Click(object sender, EventArgs e)
    {
        if (FileUpload1 != null)
        {
            RegisterStartupScript("msg", "<script>alert('Payment Successfull' )</script>");
        }
    }
}