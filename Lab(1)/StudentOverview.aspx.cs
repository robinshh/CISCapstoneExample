using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
// File: StudentOverview.aspx.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: Add new students

namespace Lab_1_
{
    public partial class StudentOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void update_Click(object sender, EventArgs e)
        {
            { //fill gridview with member information from a specified student from a textbox
                String sqlQuery = "SELECT Mem.FirstName+' '+Mem.LastName AS MentorFullName FROM Member MEM, Mentor Men, Student Stu WHERE MEM.MemberID=MEN.MemberID AND Stu.StudentID=Men.StudentID AND Stu.StudentID =";
                sqlQuery += StudentList.SelectedValue;
                {
                    SqlConnection sqlConnect = new
                    SqlConnection("Server=Localhost;Database=Lab1;Trusted_Connection=Yes;");
                    SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);

                    DataTable dtForGridView = new DataTable();
                    sqlAdapter.Fill(dtForGridView);

                    MentorResults.DataSource = dtForGridView;
                    MentorResults.DataBind();
                }
            }
        }
    }
}