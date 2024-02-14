using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Database_Connect
{
    public partial class InsertPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr;
            SqlConnection connObj;
            connStr = @"Data Source = (LocalDB)\MSSQLLocalDb; AttachDbFilename = C:\Users\hetpa\source\repos\Database_Connect; Integrated Security = True";
            connObj = new SqlConnection(connStr);
            connObj.Open();

            string sqlQuery = "INSERT INTO Student1 VALUES(@id, @Name, @MobileNo, @Course)";
            SqlCommand cmd = new SqlCommand(sqlQuery, connObj);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@MobileNo", TextBox3.Text);
            cmd.Parameters.AddWithValue("@course", TextBox4.Text);

            cmd.ExecuteNonQuery();

            Label2.Text = "Record Inserted Successfully!";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";

            connObj.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform1.aspx");
        }
    }
}