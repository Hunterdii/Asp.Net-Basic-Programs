using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Application
{
    public partial class Info : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Application["name"] = TextBox1.Text;
            Application["course"] = TextBox2.Text;
            Application["institute"] = TextBox3.Text;

            Response.Write("Application State Created");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("NextPage.aspx");
        }
    }
}