using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class UserTransactionDetails : System.Web.UI.Page
{
    SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
    }
    protected void Button1_Click(object sender, EventArgs e)

    {   string s= DropDownList1.Text;       
        SqlCommand rdr = new SqlCommand("select * from [ACCOUNT] where USERNAME='"+s+"'", co);
            co.Open();
            SqlDataReader sdr = rdr.ExecuteReader();

            while (sdr.Read())
            {
                Label3.Text = sdr[1].ToString();

            } 
            co.Close();
            if (Label3.Text == "")
            {
                Label3.Text = "Invalid Username";
            }
            else
            {
                Session["USERNAME"] = Label3.Text;
                Response.Redirect("~/TransactionDetail.aspx");
            }
       
    }
}  