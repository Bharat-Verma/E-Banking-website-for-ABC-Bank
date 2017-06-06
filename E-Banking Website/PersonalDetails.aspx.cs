using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class PersonalDetails : System.Web.UI.Page
{
   SqlConnection cn=new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand sld=new SqlCommand("select * from [PERSONALDETAILS] where USERNAME='"+Session["USERNAME"]+"'",cn);
        cn.Open();
        SqlDataReader sdr = sld.ExecuteReader();
        while (sdr.Read())
        {
            Session["PERMANENT ADDRESS"] = sdr[2].ToString();
            Session["CORRESPONDENCEADDRESS"] = sdr[3].ToString();
            Session["CITY"] = sdr[4].ToString();
            Session["PINCODE"] = sdr[5].ToString();
            Session["TELEPHONE"] = sdr[6].ToString();
        }        
        Label2.Text = Session["PERMANENT ADDRESS"].ToString();
        Label3.Text = Session["CORRESPONDENCEADDRESS"].ToString();
        Label4.Text = Session["CITY"].ToString();
        Label5.Text = Session["PINCODE"].ToString();
        Label6.Text = Session["TELEPHONE"].ToString();     
        cn.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/ChangePassword.aspx");
    }
    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Server.Transfer("~/ChangeTransactionPassword.aspx");
    }
}
