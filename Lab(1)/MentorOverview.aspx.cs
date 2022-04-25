// File: DukeGroupMaster.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: View the possible mentors and the students they mentor
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Configuration;

namespace Lab_1_
{
    public partial class MentorOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UpdateStudents_Click(object sender, EventArgs e)
        {
            {
                String sqlQuery = "SELECT Stu.FirstName+' '+Stu.LastName AS StudentFullName FROM Member MEM, Mentor Men, Student Stu WHERE MEM.MemberID=MEN.MemberID AND Stu.StudentID=Men.StudentID AND Mem.MemberID =";
                sqlQuery += MentorNameList.SelectedValue;
                {
                    SqlConnection sqlConnect = new
                    SqlConnection(WebConfigurationManager.ConnectionStrings["Lab2"].ConnectionString.ToString();
                    SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);

                    DataTable dtForGridView = new DataTable();
                    sqlAdapter.Fill(dtForGridView);

                    grdStudent.DataSource = dtForGridView;
                    grdStudent.DataBind();
                }
            }
        }
    }
}