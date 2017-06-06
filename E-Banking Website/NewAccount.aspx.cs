using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void LinkButton3_Click(Object sender, EventArgs e)
    {
        try
        {
            SqlDataSource1.InsertParameters["ACCNUMBER"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TxtAC")).Text;
            SqlDataSource1.InsertParameters["USERNAME"].DefaultValue = ((TextBox)GridView1.FooterRow.FindControl("TxtU")).Text;

            SqlDataSource1.Insert();
        }
        catch(Exception ex)
        {
            Label3.Text = "Please go to Step 1 and Insert the information from there till Step 4. Each field is mandatory." + "\n" + ex.Message;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/AdminPers.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/ClientLogin.aspx");
    }
    //protected void SqlDataSource1_Deleting(object sender, SqlDataSourceCommandEventArgs e)
    //{
        
    //}
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}