using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ChangePassword : System.Web.UI.Page
{
    SqlConnection cos = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "";
      
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        

    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        SqlCommand smd = new SqlCommand("update [LOGIN] set [PASSWORD]= '" + TextBox2.Text + "' where USERNAME='" + Session["USERNAME"] + "'", cos);
        


        if (TextBox1.Text == Session["PASSWORD"].ToString())
        {
            Label2.Text = "PASSWORD SUCESSFULLY CHANGED!!!!";
            cos.Open();

            int s = smd.ExecuteNonQuery();
            cos.Close();
            Server.Transfer("~/ChangedPasswordConfirmation.aspx");


        }

        else
        {
            Label2.Text = "INVALID CURRENT PASSWORD";


        }
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("~/PersonalDetails.aspx");
    }
}