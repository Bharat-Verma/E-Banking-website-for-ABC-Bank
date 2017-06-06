using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AdminPers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }

   protected void Button2_Click(object sender, EventArgs e)
   {
       Response.Redirect("~/Client.aspx");
   }
   protected void Button1_Click(object sender, EventArgs e)
   {
       Response.Redirect("~/NewAccount.aspx");
   }

    protected void Insert_from_details_view(object sender, DetailsViewInsertedEventArgs e)
    {
        {
            if (e.Exception != null)
            {
                Label1.Text = "A database error has occurred. " +
                    "Message: " + e.Exception.Message;
                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
            }
            else
            {
                DetailsView1.DataBind();
            }
        }
        //try
        //{
        //    DropDownList1.DataBind();
        //}
        //catch (Exception ex)
        //{
        //    Label1.Text = "Something is wrong, please try and insert later. Each field is mandatory." 
        //        + "\n" + ex.Message;
        //}
    }
}