using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temp_DataBase
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr;
            SqlConnection connObj;
            connStr = @"Data Source = (LocalDB)\MSSQLLocalDb; AttachDbFilename = C:\Users\prana\source\repos\Temp_DataBase\Temp_DataBase\App_Data\Database1.mdf; Integrated Security = True";

            connObj = new SqlConnection(connStr);
            connObj.Open();

            string SqlQuery = "INSERT INTO Student VALUES(@id, @Name, @ERN)";
            SqlCommand cmd = new SqlCommand(SqlQuery, connObj);
            cmd.Parameters.AddWithValue("@id", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Name", TextBox2.Text);
            cmd.Parameters.AddWithValue("@ERN", TextBox3.Text);

            cmd.ExecuteNonQuery();

            Label1.Text = "Record Inserted Successfully";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";

            connObj.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("DisplayPage.aspx");
        }
    }
}