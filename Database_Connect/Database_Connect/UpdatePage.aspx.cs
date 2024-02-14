using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_Connect
{
    public partial class UpdatePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = null;
            SqlConnection connObj = null;

            connStr = @"Data Source = (LocalDB)\MSSQLLocalDb; AttachDbFilename = C:\Users\prana\source\repos\Database_Connect\Database_Connect\App_Data\Student1.mdf; Integrated Security = True";
            connObj = new SqlConnection(connStr);
            connObj.Open();

            string sqlQuery = "UPDATE Student1 SET Course = @Course WHERE id = @id";    
            SqlCommand cmd = new SqlCommand(sqlQuery, connObj);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Course", TextBox3.Text);
            cmd.ExecuteNonQuery();

            Label1.Text = "Record Updated Successfully";
            TextBox1.Text = "";
            TextBox3.Text = "";
                
            connObj.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform1.aspx");
        }
    }
}