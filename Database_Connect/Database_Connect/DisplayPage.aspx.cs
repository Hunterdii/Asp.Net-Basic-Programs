using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Database_Connect
{
    public partial class WebForm2 : System.Web.UI.Page
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
            string connStr = null;
            SqlConnection connObj = null;

            connStr = @"Data Source = (LocalDB)\MSSQLLocalDb; AttachDbFilename = C:\Users\prana\source\repos\Database_Connect\Database_Connect\App_Data\Student1.mdf; Integrated Security = True";
            connObj = new SqlConnection(connStr);
            connObj.Open();

            string sqlQuery = "SELECT * FROM Student1";
            string output = " ";

            SqlCommand cmd = new SqlCommand(sqlQuery, connObj);
            SqlDataReader dataReader = cmd.ExecuteReader();
            while (dataReader.Read())
                output += dataReader.GetValue(0) + " - " + dataReader.GetValue(1) + " - " + dataReader.GetValue(2) + " - " + dataReader.GetValue(3) + "<br/>";
            
            Response.Write(output);
            dataReader.Close();
            connObj.Close();
        }
    }
}