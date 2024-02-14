using System;

namespace SessionMgt
{
    public partial class InputPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCreateCookie_Click(object sender, EventArgs e)
        {
            string nameValue = name.Value; 
            Response.Cookies["name"].Value = nameValue;
            Response.Cookies["name"].Expires = DateTime.Now.AddMinutes(1);
            Label1.Text = "Cookie Created";
        }

        protected void btnCheckCookie_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["name"] == null)
            {
                TextBox2.Text = "No cookie found";
            }
            else
            {
                TextBox2.Text = Request.Cookies["name"].Value;
            }
        }
    }
}
