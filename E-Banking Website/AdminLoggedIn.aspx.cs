using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminLoggedIn : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("AdminChangePassword.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Client.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("UserTransactionDetails.aspx");
    }
}