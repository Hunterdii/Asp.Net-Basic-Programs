using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_Connect
{
    public partial class DeletePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform1.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source = (LocalDB)\MSSQLLocalDb; AttachDbFilename = C:\Users\prana\source\repos\Database_Connect\Database_Connect\App_Data\Student1.mdf; Integrated Security = True";
            SqlConnection connObj = null;
            SqlCommand cmd;

            connObj = new SqlConnection(connStr);
            connObj.Open();
            string sqlQuery = "DELETE FROM Student1 where id = @id";
            cmd  = new SqlCommand(sqlQuery, connObj);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.ExecuteNonQuery();

            Label1.Text = "Record Deleted Successfully!";
            TextBox1.Text = "";
        }
    }
}