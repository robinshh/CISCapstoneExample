// File: ModifyScholarship.aspx.cs
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

namespace Lab_1_
{
    public partial class ModifyScholarship : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //array needs to be created to put objects into
                Session["ScholarshipArray"] = new Scholarship[10];
                Session["arrayKeeper"] = 0;
            }
        }

        protected void Population_Click(object sender, EventArgs e)
        {
            //button to give random data into the text boxes
            ScholarshipNamestxt.Text = "Ezell Award";
            ScholarshipYeartxt.Text = "2024";
            ScholarshipAmounttxt.Text = "10000";
        }

        protected void Saving_Click(object sender, EventArgs e)
        {
            //used to get data out of the boxes and insert them into the overloaded constructor to create objects
            String Name = ScholarshipNamestxt.Text.ToString();
            double Year = double.Parse(ScholarshipYeartxt.Text);
            double Amount = double.Parse(ScholarshipAmounttxt.Text);


            Scholarship[] sArray = (Scholarship[])Session["ScholarshipArray"];
            int keeper = (int)Session["ArrayKeeper"];

            sArray[keeper++] = new Scholarship(Scholarship.ScholarshipIDs, Name, Year, Amount, Scholarship.MemberIDs);
            Session["ArrayKeeper"] = keeper;
            Session["ScholarshipArray"] = sArray;
            //clear out the box
            ScholarshipListBox.Items.Clear();
            //fill the box with new info
            for (int i = 0; i < keeper; i++)
            {
                ScholarshipListBox.Items.Add(sArray[i].ScholarshipNames + ' ' + sArray[i].SCholarshipYears + ' ' + sArray[i].ScholarshipAmounts);

            }
            //empty out the boxes
            ScholarshipNamestxt.Text = "";
            ScholarshipYeartxt.Text = "";
            ScholarshipAmounttxt.Text = "";

        }

        protected void updateGridView()
        {//used to update the information after a method is called
            String sqlQuery = "select ScholarshipName,ScholarshipYear,ScholarshipAmount from scholarship";

            {
                SqlConnection sqlConnect = new
                SqlConnection("Server=Localhost;Database=Lab1;Trusted_Connection=Yes;");
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);

                DataTable dtForGridView = new DataTable();
                sqlAdapter.Fill(dtForGridView);

                GridViewScholarship.DataSource = dtForGridView;
                GridViewScholarship.DataBind();
            }
        }

        protected void Committing_Click(object sender, EventArgs e)
        {
            //send the data from the form to the database to be inserted into the sql database
            String Name = ScholarshipNamestxt.Text.ToString();
            double Year = double.Parse(ScholarshipYeartxt.Text);
            double Amount = double.Parse(ScholarshipAmounttxt.Text);
            try
            {
                String sqlQuery = "INSERT INTO Scholarship VALUES (" + Scholarship.ScholarshipIDs + ",'" + Name + "','" + Year + "','" + Amount + "','" + Scholarship.MemberIDs + "')";
                {
                    SqlConnection sqlConnect = new
                    SqlConnection("Server=Localhost;Database=Lab1;Trusted_Connection=Yes;");
                    SqlCommand sqlcomand = new SqlCommand();
                    sqlcomand.Connection = sqlConnect;
                    sqlcomand.CommandType = CommandType.Text;
                    sqlcomand.CommandText = sqlQuery;

                    sqlConnect.Open();
                    SqlDataReader queryresults = sqlcomand.ExecuteReader();
                    queryresults.Close();
                    sqlConnect.Close();

                    updateGridView();
                    Scholarship.scholarshipadd();
                }
            }
            catch
            {//if duplicate data causes a crash, inform the user of the issue
                TextBoxHandler.Text = "Duplicate Data Entered";
            }
        }

        protected void Clearing_Click(object sender, EventArgs e)
        {
            //clears out the textboxes 
            ScholarshipNamestxt.Text = "";
            ScholarshipYeartxt.Text = "";
            ScholarshipAmounttxt.Text = "";
        }
    }
}