using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Temp_DataBase
{
    public partial class DisplayPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connStr = @"Data Source = (LocalDB)\MSSQLLocalDb; AttachDbFilename = C:\Users\prana\source\repos\Temp_DataBase\Temp_DataBase\App_Data\Database1.mdf; Integrated Security = True";

            SqlConnection connObj = new SqlConnection(connStr);
            connObj.Open();

            string sqlQuery = "SELECT * FROM Student";
            string output = " ";

            SqlCommand cmd = new SqlCommand(sqlQuery, connObj);
            SqlDataReader dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
                output += dataReader.GetString(0) + " " + dataReader.GetString(1) + dataReader.GetString(2) + " <br> ";

            Response.Write(output);
            dataReader.Close();
            connObj.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Webform1.aspx");
        }
    }
}