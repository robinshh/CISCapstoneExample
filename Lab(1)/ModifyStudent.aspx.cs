using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

// File: DukeGroupMaster.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: This page is meant to allow the user to create new students and send them to the database

namespace Lab_1_
{
    public partial class ModifyStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //array needs to be created to put objects into
                Session["StudentArray"] = new Student[10];
                Session["arrayKeeper"] = 0;
            }
        }

        //random data is inserted into the text fields to be tested
        protected void Populate_Click(object sender, EventArgs e)
        {
            FirstNametxt.Text = "Justin";
            LastNametxt.Text = "Jasper";
            Emailtxt.Text = "JasperJ@dukes.jmu.edu";
            PhoneNumbertxt.Text = "8044027190";
            UniversityYeartxt.Text = "Senior";
            Majortxt.Text = "CIS";
            GradYeartxt.Text = "2022";
            IntershipStatustxt.Text = "None";
            JobStatustxt.Text = "None";
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            //create an object using the data provided
            String fName = FirstNametxt.Text.ToString();
            String LName = LastNametxt.Text.ToString();
            String emailed = Emailtxt.Text.ToString();
            String Phone = PhoneNumbertxt.Text.ToString();
            String University = UniversityYeartxt.Text.ToString();
            String Majored = Majortxt.Text.ToString();
            double Grad = double.Parse(GradYeartxt.Text);
            String intern = IntershipStatustxt.Text.ToString();
            String Employ = JobStatustxt.Text.ToString();

            Student[] sArray = (Student[])Session["StudentArray"];
            int keeper = (int)Session["ArrayKeeper"];

            sArray[keeper++] = new Student(Student.StartingID, fName, LName, emailed, Phone, University, Majored, Grad, intern, Employ);
            Session["ArrayKeeper"] = keeper;
            Session["StudentArray"] = sArray;

            StudentListBox.Items.Clear();
            //fill the listbox with new data
            for (int i = 0; i < keeper; i++)
            {
                StudentListBox.Items.Add(sArray[i].FirstNames + ' ' + sArray[i].LastNames);

            }
            FirstNametxt.Text = "";
            LastNametxt.Text = "";
            Emailtxt.Text = "";
            PhoneNumbertxt.Text = "";
            UniversityYeartxt.Text = "";
            Majortxt.Text = "";
            GradYeartxt.Text = "";
            IntershipStatustxt.Text = "";
            JobStatustxt.Text = "";


        }

        protected void updateGridView()
        {//needed to get the gridview updated after changes are made
            String sqlQuery = "SELECT FirstName, LastName FROM Student";

            {
                SqlConnection sqlConnect = new
                SqlConnection("Server=Localhost;Database=Lab1;Trusted_Connection=Yes;");
                SqlDataAdapter sqlAdapter = new SqlDataAdapter(sqlQuery, sqlConnect);

                DataTable dtForGridView = new DataTable();
                sqlAdapter.Fill(dtForGridView);

                GridViewStudents.DataSource = dtForGridView;
                GridViewStudents.DataBind();
            }
        }
        protected void Commit_Click(object sender, EventArgs e)
        {
            //get data from the form
            String fName = FirstNametxt.Text.ToString();
            String LName = LastNametxt.Text.ToString();
            String emailed = Emailtxt.Text.ToString();
            String Phone = PhoneNumbertxt.Text.ToString();
            String University = UniversityYeartxt.Text.ToString();
            String Majored = Majortxt.Text.ToString();
            double Grad = double.Parse(GradYeartxt.Text);
            String intern = IntershipStatustxt.Text.ToString();
            String Employ = JobStatustxt.Text.ToString();
            //insert the values into sql and use try statement to prevent duplicate data 
            try
            {
                String sqlQuery = "INSERT INTO Student VALUES (" + Student.StartingID + ",'" + fName + "','" + LName + "','" + emailed + "','" + Phone + "','" + University + "','" + Majored + "'," + Grad + ",'" + intern + "','" + Employ + "')";
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
                    Student.studentadd();
                }
            }
            catch
            {
                TextBoxHandler.Text = "Duplicate Data Entered";
            }
        }


        protected void Clear_Click(object sender, EventArgs e)
        {
            //clear out all of the textboxes
            FirstNametxt.Text = "";
            LastNametxt.Text = "";
            Emailtxt.Text = "";
            PhoneNumbertxt.Text = "";
            UniversityYeartxt.Text = "";
            Majortxt.Text = "";
            GradYeartxt.Text = "";
            IntershipStatustxt.Text = "";
            JobStatustxt.Text = "";
        }


    }
}