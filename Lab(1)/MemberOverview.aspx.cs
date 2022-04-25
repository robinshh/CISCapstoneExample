// File: MemberOverview.aspx.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: Show general informaiton and allow the user to add additional students and scholarships
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1_
{
    public partial class MemberOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ModifyStudentbttn_Click(object sender, EventArgs e)
        {//redirect to the modify student page
            Response.Redirect("ModifyStudent.aspx");
        }

        protected void ModifyScholarshipbttn_Click(object sender, EventArgs e)
        {//redirect to the modify scholarship page
            Response.Redirect("ModifyScholarship.aspx");
        }
    }
}