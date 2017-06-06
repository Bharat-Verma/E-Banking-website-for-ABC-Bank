using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class InitialiseAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      

    }
    protected void Insert_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.InsertParameters["ACCNUMBER"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("ACNO")).Text;
            SqlDataSource1.InsertParameters["BALANCE"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("BAL")).Text;
            SqlDataSource1.InsertParameters["USERID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("USID")).Text;
            SqlDataSource1.Insert();
        }
        catch (Exception ex)
        {
            Label5.Text = "Please go to Step 1 and Insert the information from there till Step 4. Each field is mandatory." + "\n" + ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/AdminLoggedIn.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       Server.Transfer("~/ClientLogin.aspx");
    }
}