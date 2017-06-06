using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class TransactionDetail : System.Web.UI.Page
{
    SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("select * from [ACCOUNT] where USERNAME='" + Session["USERNAME"] + "'", co);
        co.Open();
        SqlDataReader sdr = cmd.ExecuteReader();
        while (sdr.Read())
        {
            Session["ACCNUMBER"] = sdr[0].ToString();

        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/UserTransactionDetails.aspx");
    }
}