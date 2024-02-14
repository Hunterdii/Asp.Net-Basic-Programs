using System;

namespace StudentResult
{
    public partial class StudentResultPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                divResult.Visible = false;
            }
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            string name = txtName.Text;
            string department = cboDepartment.SelectedValue;
            string course = cboCourse.SelectedValue;

            double coreJava, aspNet, dataStructure, operatingSystem, dcn;
            if (!double.TryParse(txtCoreJava.Text, out coreJava) ||
                !double.TryParse(txtAspNet.Text, out aspNet) ||
                !double.TryParse(txtDataStructure.Text, out dataStructure) ||
                !double.TryParse(txtOperatingSystem.Text, out operatingSystem) ||
                !double.TryParse(txtDCN.Text, out dcn))
            {
                Response.Write("Invalid input. Please enter valid numeric values for subject marks.");
                return;
            }

            double tot = coreJava + aspNet + dataStructure + operatingSystem + dcn;
            double avg = tot / 5;

            string grade;
            string gradeDescription;
            if (avg >= 95)
            {
                grade = "O";
                gradeDescription = "Outstanding Performance";
            }
            else if (avg >= 90)
            {
                grade = "A+";
                gradeDescription = "Excellent";
            }
            else if (avg >= 75)
            {
                grade = "A";
                gradeDescription = "Very Good";
            }
            else if (avg >= 65)
            {
                grade = "B";
                gradeDescription = "Good";
            }
            else if (avg >= 55)
            {
                grade = "C";
                gradeDescription = "Work Hard";
            }
            else
            {
                grade = "F";
                gradeDescription = "Fail";
            }

            lblName.Text = $"<strong>Name:</strong> {name}";
            lblDepartment.Text = $"<strong>Department:</strong> {department}";
            lblCourse.Text = $"<strong>Course:</strong> {course}";
            lblTotalMarks.Text = $"<strong>Total Marks:</strong> {tot}";
            lblAverage.Text = $"<strong>Average:</strong> {avg}";
            lblGrade.Text = $"<strong>Grade:</strong> {grade}";
            lblGradeDescription.Text = $"<strong>Grade Description:</strong> {gradeDescription}";

            divResult.Visible = true;
        }
    }
}
