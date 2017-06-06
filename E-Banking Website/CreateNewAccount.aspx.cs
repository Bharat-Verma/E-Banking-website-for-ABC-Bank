using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CreateNewAccount : System.Web.UI.Page
{
    SqlConnection cos = new SqlConnection(ConfigurationManager.ConnectionStrings["CS"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {


    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Login.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand sc = new SqlCommand("insert into [NEW_ENTRIES] values(@a1,@a2,@a3,@a4,@a5,@a6,@a7,@a8,@a9,@a10,@a11,@a12,@a13)", cos);
        sc.Parameters.AddWithValue("@a1", TextBox1.Text);
        sc.Parameters.AddWithValue("@a2", TextBox26.Text);
        sc.Parameters.AddWithValue("@a3", TextBox27.Text);
        sc.Parameters.AddWithValue("@a4", TextBox29.Text);
        sc.Parameters.AddWithValue("@a5", TextBox13.Text);
        sc.Parameters.AddWithValue("@a6", TextBox28.Text);
        sc.Parameters.AddWithValue("@a7", TextBox22.Text);
        sc.Parameters.AddWithValue("@a8", TextBox23.Text);
        sc.Parameters.AddWithValue("@a9", TextBox11.Text);
        sc.Parameters.AddWithValue("@a10", TextBox18.Text);
        sc.Parameters.AddWithValue("@a11", TextBox25.Text);
        sc.Parameters.AddWithValue("@a12", TextBox4.Text);
        sc.Parameters.AddWithValue("@a13", TextBox6.Text);

        cos.Open();
        if (sc.ExecuteNonQuery() > 0)
        {
            Response.Redirect("FormFilled.aspx");
        }
        else
        {
            Response.Redirect("~/Login.aspx");
        }
        cos.Close();
    }
    protected void ListBox7_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox13_TextChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox12_TextChanged(object sender, EventArgs e)
    {

    }
}