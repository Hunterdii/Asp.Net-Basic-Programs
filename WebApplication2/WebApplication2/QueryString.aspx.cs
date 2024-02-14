using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class QueryString : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("QueryString");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            string firstName = txtFirstName.Text;
            string lastName = txtLastName.Text;
            string course = ddlCourse.SelectedItem.Text;

            Response.Redirect($"NextPage.aspx?FirstName={firstName}&LastName={lastName}&Course={course}");
        }
    }
}
