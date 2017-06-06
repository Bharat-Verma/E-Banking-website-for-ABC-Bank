using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
    }
 
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Label1.Visible = false;
        if (TextBox1.Text == Session["ADMINPASSWORD"].ToString())
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
            SqlCommand cm = new SqlCommand("update [Admin] set AdminPassword='" + TextBox2.Text + "'", con);
            con.Open();
            int i = cm.ExecuteNonQuery();
            con.Close();
            Label1.Visible = true;
            Label1.Text = "Password Successfully Changed";

            Session.Clear();
            Session.Abandon();
            Response.AddHeader("REFRESH", "2;URL=Admin.aspx");
            //Response.Redirect("~/Admin.aspx");
        }
        else if (TextBox1.Text != null)
        {
            Label1.Visible = true;
            Label1.Text = "Invalid Password";
        }
        else
        {
            Label1.Visible = false;
        }
    }

   
}