using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;



public partial class ChangedPasswordConfirmation : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
        //Server.Transfer("~/LoggedInHome.aspx");
    }
}