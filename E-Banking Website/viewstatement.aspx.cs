using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class viewstatement : System.Web.UI.Page
{
    SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Text = "ALL TRANSACTIONS";
        SqlCommand cmd = new SqlCommand("select * from[LOGIN] where USERNAME='"+Session["USERNAME"]+"'",co);
        co.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        while(sdr.Read())
        {Session["USERID"] = sdr[2].ToString();
        Session["PASSWORD"] = sdr[1].ToString();
       // Session["USERNAME"] = sdr[3].ToString();
            
        }
        co.Close();
        SqlCommand cm = new SqlCommand("select * from [BALANCE] where ACCNUMBER='" + Session["ACCNUMBER"] + "'", co);
        co.Open();
        SqlDataReader sde = cm.ExecuteReader();
        co.Close();
    
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/LoggedInHome.aspx");
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}