using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ClientLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void Insert_Click(object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.InsertParameters["USERNAME"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("User")).Text;
            SqlDataSource1.InsertParameters["PASSWORD"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Pass")).Text;
            SqlDataSource1.InsertParameters["USERID"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("Uid")).Text;
            SqlDataSource1.Insert();
        }
        catch (Exception ex)
        {
            Label4.Text = "Please go to Step 1 and Insert the information from there till Step 4.  Each field is mandatory." + "\n" + ex.Message;
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/NewAccount.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/InitialiseAccount.aspx");
    }
}