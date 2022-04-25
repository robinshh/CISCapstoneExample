using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab_1_
{
    public partial class DukeGroups : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BttnStudent_Click(object sender, EventArgs e)
        {//redirect to the student overview page
            Response.Redirect("StudentOverview.aspx");
        }

        protected void BttnMentor_Click(object sender, EventArgs e)
        {//redirect to the mentor overview page
            Response.Redirect("MentorOverview.aspx");
        }

        protected void BttnMember_Click(object sender, EventArgs e)
        {//redirect to the member overview page
            Response.Redirect("MemberOverview.aspx");
        }

        protected void BttnCompany_Click(object sender, EventArgs e)
        {//redirect to the company overview page
            Response.Redirect("CompanyOverview.aspx");
        }

        protected void HomePage_Click(object sender, ImageClickEventArgs e)
        {//redirect to the homepage with the image
            Response.Redirect("homepage.aspx");
        }
    }
}