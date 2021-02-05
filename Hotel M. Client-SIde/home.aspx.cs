using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class home : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["total_bill"] = "0";
        Session["room_tax"] = "0";
        Session["cust_food_price"] = "0";
        Session["food_tax"] = "0";
    }
}