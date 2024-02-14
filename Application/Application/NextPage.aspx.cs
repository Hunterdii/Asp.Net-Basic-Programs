using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Application["name"].ToString();
            Label2.Text = Application["course"].ToString();
            Label3.Text = Application["institute"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Info.aspx");
        }
    }
}