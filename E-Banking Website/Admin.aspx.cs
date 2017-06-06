using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin : System.Web.UI.Page
{
   static int i = 1;
    

    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        SqlCommand cm = new SqlCommand("select * from [Admin]", con);
        con.Open();
        SqlDataReader sdr = cm.ExecuteReader();



        while (sdr.Read())
        {
            if ((TextBox1.Text == sdr[0].ToString()) && (TextBox2.Text == sdr[1].ToString()))
            {
                Session["ADMINID"] = sdr[0];
                Session["ADMINPASSWORD"] = sdr[1];
                string t=Session["ADMINPASSWORD"].ToString();
               Server.Transfer("AdminLoggedIn.aspx");


            }
        }


        if (i >= 1 && i<3)
        {
            Label1.Text = "You have " + (3 - i).ToString() + " more chances left";
            i++;
        }
        else if (i == 3)
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            Button1.Enabled = false;
            Label1.Text = "YOU CANNOT LOGIN NOW";
        }
        else
        {
            Server.Transfer("Error");

        }






        con.Close();


    }   


   
            

}
