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


public partial class aboutUS : System.Web.UI.Page
{
    logic obj = new logic();
    SqlConnection con;
    string constr = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
    }
    
}
