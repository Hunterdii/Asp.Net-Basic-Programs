using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string name = TextBox1.Text;
            string phone = TextBox2.Text;
            string email = TextBox3.Text;
            string address = TextBox4.Text;
            string confirmEmail = TextBox5.Text;

            Response.Write("Form submitted successfully!");
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
