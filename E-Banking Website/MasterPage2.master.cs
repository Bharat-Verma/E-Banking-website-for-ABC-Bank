using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//coding of session

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    SqlConnection co = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand cm = new SqlCommand("select * from [PERSONALDETAILS] where USERNAME='" + Session["USERNAME"] + "'", co);

        co.Open();
        SqlDataReader sdr = cm.ExecuteReader();
        while (sdr.Read())
        {
            Session["NAME"] = sdr[1].ToString();
            Label1.Text = Session["NAME"].ToString();

        } co.Close();


        {
            try
            {
                Label1.Text = Session["NAME"].ToString();
            }
            catch
            {
                //Response.Redirect("Invalid Transaction Password");
                Session.Clear();
                Session.Abandon();
                Response.Redirect("~/Login.aspx");
            }
        }
        

    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/Login.aspx");
    }
}
    
   

