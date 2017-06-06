using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class MoneyTransferConfirmation : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand on = new SqlCommand("select * from [BALANCE] where USERID='"+Session["USERID"]+"'",con);
        con.Open();
        SqlDataReader sdr = on.ExecuteReader();
        while(sdr.Read())
        Label2.Text = sdr[1].ToString();

        con.Close();

        //try
        //{
        //    Label2.Text = sdr[1].ToString();

        //}
        //catch
        //{
        //    Response.Redirect("~/default8.aspx");
        
        //}
        //Label2.Text = Session["BALANCE"].ToString(); 

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("LoggedInHome.aspx");
    }
}