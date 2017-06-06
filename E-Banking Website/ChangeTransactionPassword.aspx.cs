using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangeTransactionPassword : System.Web.UI.Page
{
    
    SqlConnection cos = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    SqlConnection cos1 = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
      
    } 

    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {


    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand smd = new SqlCommand("update [LOGIN] set [USERID]= '" + TextBox2.Text + "' where USERNAME='" + Session["USERNAME"] + "'", cos);
        SqlCommand smd1 = new SqlCommand("update [BALANCE] set [USERID]= '" + TextBox2.Text + "' where ACCNUMBER='" + Session["ACCNUMBER"] + "'", cos1);

        if (TextBox1.Text == Session["USERID"].ToString())
        {
            cos.Open();
            int s = smd.ExecuteNonQuery();
            cos.Close();

            cos1.Open();
            int k = smd1.ExecuteNonQuery();
            cos1.Close();

            Label2.Text = " TRANSACTION PASSWORD SUCESSFULLY CHANGED!!!!";
            Server.Transfer("~/ChangedTransactionPasswordConfirmation.aspx");
        }
        else
        {
            Label2.Text = "INVALID CURRENT TRANSACTION PASSWORD";
        }       
    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/PersonalDetails.aspx");
    }
}