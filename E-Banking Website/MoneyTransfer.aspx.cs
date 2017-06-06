using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MoneyTransfer : System.Web.UI.Page
{
    SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
        Label4.Text = "";
        Label2.Text = Session["BALANCE"].ToString();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        SqlCommand re = new SqlCommand("select * from [BALANCE] where ACCNUMBER='" + TextBox2.Text + "'", co);
        co.Open();
        SqlDataReader sdr = re.ExecuteReader();

        while (sdr.Read())
        {
            Label4.Visible = false;
            Label4.Text = sdr[0].ToString();

        } co.Close();
        if (Label4.Text == "")
        {
            Label5.Text = "Invalid Account Number";
        }
        else
        {
            Label5.Visible = false;
            double y = Convert.ToDouble(TextBox3.Text);
            double r = Convert.ToDouble(Label2.Text);
            if (y > r)
            {
                Label3.Visible = true;
                Label3.Text = "Insufficient Balance ";
            }
            else if (TextBox4.Text == Session["USERID"].ToString())
            {
                SqlCommand der = new SqlCommand("update [BALANCE] set BALANCE=BALANCE-'" + TextBox3.Text + "' where ACCNUMBER='" + Session["ACCNUMBER"] + "'", co);
                co.Open();
                int i = der.ExecuteNonQuery();
                co.Close();
                SqlCommand er = new SqlCommand("update [BALANCE] set BALANCE=BALANCE+'" + TextBox3.Text + "' where ACCNUMBER='" + TextBox2.Text + "'", co);
                co.Open();
                int o = er.ExecuteNonQuery();
                co.Close();
                Server.Transfer("~/MoneyTransferConfirmation.aspx");
            }
            else
            {
                Label3.Text = "Invalid transaction password";
            }
        }
}
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("LoggedInHome.aspx");

        //this code is pasted here from the page load method
        //SqlCommand cmd = new SqlCommand("select * from[LOGIN] where USERNAME='"+Session["USERNAME"]+"'",co);
        //co.Open();
        //SqlDataReader sdr = cmd.ExecuteReader();
        //while(sdr.Read())
        //Session["USERID"] = sdr[3].ToString();
        //co.Close();
        //SqlCommand cm = new SqlCommand("select * from[BALANCE] where USERID='" + Session["USERID"] + "'", co);
        //co.Open();
        //SqlDataReader sde = cm.ExecuteReader();
        //while (sde.Read())
        //{
        //    Session["BALANCE"] = sde[1].ToString();
        //    Session["ACCNUMBER"] = sde[0].ToString();

        //co.Close();
        //try
        //{
        //    Label2.Text = Session["BALANCE"].ToString();
        //}
        //catch {
        //   // Session.Clear();
        //    Response.Redirect("`/default8.aspx");
        //}
    }
}