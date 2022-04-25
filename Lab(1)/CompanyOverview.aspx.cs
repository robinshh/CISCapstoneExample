// File: CompanyOverview.aspx.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: To display information about a company
using System;
using System.Data;
using System.Data.SqlClient;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Lab_1_
{
    public partial class CompanyOverview : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CompanyUpdate_Click(object sender, EventArgs e)
        {
            {
                String sqlQuery = "Select Con.ContactName From Contact Con, Company Com Where Com.CompanyID = Con.CompanyID AND Com.CompanyID=";
                sqlQuery += CompanyList.SelectedValue;
                {
                    SqlConnection sqlConnect = new
                    SqlConnection("Server=Localhost;Database=Lab1;Trusted_Connection=Yes;");
                    SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);

                    DataTable dtForGridView = new DataTable();
                    sqlAdapter.Fill(dtForGridView);

                    grdOrderResults.DataSource = dtForGridView;
                    grdOrderResults.DataBind();
                }
            }
            {
                String sqlQuery = "Select Com.CompanyName, Jo.InternshipDescription, Jo.DateStart,Jo.DateEnd From Contact Con, Company Com, Job Jo Where Com.CompanyID = Con.CompanyID AND Jo.ContactID=Con.ContactID AND Com.CompanyID=";
                sqlQuery += CompanyList.SelectedValue;
                {
                    SqlConnection sqlConnect = new
                    SqlConnection("Server=Localhost;Database=Lab1;Trusted_Connection=Yes;");
                    SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);

                    DataTable dtForGridView = new DataTable();
                    sqlAdapter.Fill(dtForGridView);

                    AvailableJob.DataSource = dtForGridView;
                    AvailableJob.DataBind();
                }
            }
        }
    }
}