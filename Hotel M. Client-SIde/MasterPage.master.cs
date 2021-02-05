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
using System.Net;
using System.Net.Mail;

public partial class MasterPage : System.Web.UI.MasterPage
{
    logic obj = new logic();
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string email= txt_subsr.Text;
        con = new SqlConnection(constr);
        con.Open();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select email from user_subsr where email ='" + txt_subsr.Text + "'";
        cmd.Connection = con;
        SqlDataReader rd = cmd.ExecuteReader();
        if (rd.HasRows)
        {
            txt_subsr.Text = "";
            Label1.Text = "Your Email is already subscribed with us";
        }
        else
        {

             obj.executequery("insert into user_subsr values('" + txt_subsr.Text + "')");
            

               using (MailMessage mail = new MailMessage())
                 {
                     mail.From = new MailAddress("rishabhjha078@gmail.com");
                     mail.To.Add(email);
                     mail.Subject = "Glenn Manor";
                     mail.Body = "You have Successfully registered to Glenn Manor";
                     mail.IsBodyHtml = true;
                     using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                {
                    smtp.UseDefaultCredentials = false;

                    smtp.Credentials = new System.Net.NetworkCredential("rishabhjha078@gmail.com", "R0N@!D9027292272");
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;
                    smtp.EnableSsl = true;
                    smtp.Send(mail);
                      }
                 }
        
            Label1.Text = "Your Email is subscribed with us now";
            txt_subsr.Text = "";
            
        }

    }

    protected void LinkButton9_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Clear();
        Response.Redirect("login.aspx");
    }
}
