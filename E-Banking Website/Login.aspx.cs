using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1, s2;
        s1 = TextBox1.Text;
        s2 = TextBox2.Text;
        SqlCommand cmd = new SqlCommand("select * from [LOGIN] ", con);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        while (dr.Read())
        {

            if ((dr[0].ToString() == s1) && (dr[1].ToString() == s2))
            {
                Session["USERNAME"] = TextBox1.Text;

                Response.Redirect("LoggedInHome.aspx");
            }
            else
            {
                Label1.Text = "Please enter correct username and password combination";
            }


        }

        con.Close();
       
    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }
}