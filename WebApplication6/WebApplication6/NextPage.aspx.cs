using System;

namespace SessionMgt
{
    public partial class NextPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Session.Timeout = 1;
            }
            else
            {
                if (Session["name"] == null)
                {
                    LabelTimeoutMessage.InnerHtml = "Session has expired.";
                    LabelTimeoutMessage.Style["display"] = "block";
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = Session["name"]?.ToString();
            Label2.Text = Session["city"]?.ToString();
            Label3.Text = Session["department"]?.ToString();
            Label4.Text = Session["course"]?.ToString();
            Label5.Text = Session["hobby"]?.ToString();
            Label6.Text = Session["favLanguage"]?.ToString();

            Label1.Visible = true;
            Label2.Visible = true;
            Label3.Visible = true;
            Label4.Visible = true;
            Label5.Visible = true;
            Label6.Visible = true;
        }
    }
}
