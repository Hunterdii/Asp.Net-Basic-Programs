using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SQL
{
    public partial class Connect_to : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string conn_str = @"C:\Users\prana\source\repos\SQL\SQL\App_Data\";

            SqlConnection conn = null;
            conn = new SqlConnection(conn_str);
            conn.Open();
            Response.Write("Connection Made Successfully");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

        }
    }
}