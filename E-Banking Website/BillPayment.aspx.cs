using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class BillPayment : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text ="";
        Label2.Text =  Session["BALANCE"].ToString();


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        double y = Convert.ToDouble(TextBox3.Text);
        double r = Convert.ToDouble(Label2.Text);
        if (y > r)
        {
            Label3.Visible = true;
            Label3.Text = "Insufficient Balance ";

        }
        else if (TextBox4.Text == Session["USERID"].ToString())
        {
            SqlCommand der = new SqlCommand("update [BALANCE] set BALANCE=BALANCE-'" + TextBox3.Text + "' where ACCNUMBER='" + Session["ACCNUMBER"] + "'", con);
            con.Open();
            int i = der.ExecuteNonQuery();
            con.Close();
            Server.Transfer("~/BillPaid.aspx");

        }
        else
        {
            Label3.Text = "Invalid transaction password";

        }

    }
}