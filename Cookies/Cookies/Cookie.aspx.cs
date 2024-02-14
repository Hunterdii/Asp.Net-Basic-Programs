using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class Cookie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Cookies["name"].Value = TextBox1.Text.ToString();
            Response.Cookies["age"].Value = TextBox2.Text.ToString();
            Response.Cookies["gender"].Value = TextBox3.Text.ToString();

            Response.Write("Cookie Created");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NextPage.aspx");
        }
    }
}