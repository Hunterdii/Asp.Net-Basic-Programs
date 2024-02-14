using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cookies
{
    public partial class NextPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = Request.Cookies["name"].Value;
            Label1.Text = name;

            string age = Request.Cookies["age"].Value;
            Label2.Text = age;

            string gender = Request.Cookies["gender"].Value;
            Label3.Text = gender;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cookie.aspx");
        }
    }
}