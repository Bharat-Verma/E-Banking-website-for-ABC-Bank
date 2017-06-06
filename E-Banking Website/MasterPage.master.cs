using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetImageUrl();
        }
    }
    protected void gettickvalue(object sender, EventArgs e)
    {
        SetImageUrl();
    }

    private void SetImageUrl()
    {
        Random RandomNumber = new Random();

        int n = RandomNumber.Next(1, 7);

        imgBanner.ImageUrl = System.String.Concat("images/banner_", n.ToString(), ".png");
    }
}
