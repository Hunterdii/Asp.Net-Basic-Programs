using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Form
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Write("Student Marksheet");
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int marks1 = int.Parse(TextBox3.Text);
            int marks2 = int.Parse(TextBox4.Text);
            int marks3 = int.Parse(TextBox5.Text);
            int marks4 = int.Parse(TextBox6.Text);
            int marks5 = int.Parse(TextBox7.Text);
            int total = marks1 + marks2 + marks3 + marks4 + marks5;
            TextBox8.Text = total.ToString();
            int average = total / 5;
            TextBox9.Text = average.ToString();

            if (total > 60)
                TextBox10.Text = "PASSED";
            else
                TextBox10.Text = "Better Luck Next Time"; 
            
            
        }

        protected void TextBox8_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox1_TextChanged1(object sender, EventArgs e)
        {

        }
    }
}