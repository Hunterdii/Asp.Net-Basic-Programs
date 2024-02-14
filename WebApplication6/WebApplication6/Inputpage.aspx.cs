using System;
using System.Web.UI;

namespace SessionMgt
{
    public partial class InputPage : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            Session["name"] = name.Value;
            Session["city"] = city.Value;
            Session["department"] = department.Value;
            Session["course"] = course.Value;
            Session["hobby"] = hobby.Value;
            Session["favLanguage"] = favLanguage.Value;

            Response.Redirect("NextPage.aspx");
        }
    }
}
