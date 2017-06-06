using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class LoggedInHome : System.Web.UI.Page
{
    SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from [LOGIN] where USERNAME='"+Session["USERNAME"]+"'",co);
        co.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        while(sdr.Read())
        {
            Session["USERID"] = sdr[2].ToString();
            Session["PASSWORD"] = sdr[1].ToString();
        }
        co.Close();
        SqlCommand cm = new SqlCommand("select * from[BALANCE] where USERID='" + Session["USERID"] + "'", co);
        co.Open();
        SqlDataReader sde = cm.ExecuteReader();
        while (sde.Read())
        {
            Session["BALANCE"] = sde[1].ToString();
            Session["ACCNUMBER"] = sde[0].ToString();
        }
        co.Close();
    
    }
  
    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/MoneyTransfer.aspx");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/PersonalDetails.aspx");
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        Server.Transfer("~/BillPayment.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Server.Transfer("viewstatement.aspx");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Server.Transfer("BalanceEnquiry.aspx");
    }
}