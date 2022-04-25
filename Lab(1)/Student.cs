using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// File: Student.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: class to create and affect student objects


namespace Lab_1_
{
    public class Student
    {


        private int StudentID
        {
            get { return StudentID; }
            set {; }
        }
        //create varibles to be used
        private String FirstName;
        private String LastName;
        private String Email;
        private String PhoneNumber;
        private String UniversityYear;
        private String Major;
        private double GradYear;
        private String InternshipStat;
        private String EmploymentStatus;

        //create getters and setters so that variables can be affected
        public string FirstNames
        {
            get { return FirstName; }
            set { FirstName = value; }
        }
        public string LastNames
        {
            get { return LastName; }
            set { LastName = value; }
        }
        public string Emails
        {
            get { return Email; }
            set { Email = value; }
        }
        public string PhoneNumbers
        {
            get { return PhoneNumber; }
            set { PhoneNumber = value; }
        }
        public string UniversityYears
        {
            get { return UniversityYear; }
            set { UniversityYear = value; }
        }
        public string Majors
        {
            get { return Major; }
            set { Major = value; }
        }
        public double GradYears
        {
            get { return GradYear; }
            set
            {
                if (value >= 2022 && value <= 2026)
                    GradYear = value;
                else
                    GradYear = 2024;
            }
        }
        public string InternshipStats
        {
            get { return InternshipStat; }
            set { InternshipStat = value; }
        }
        public string EmploymentStatuss
        {
            get { return EmploymentStatus; }
            set { EmploymentStatus = value; }
        }

        private static int startID = 9;

        //overloaded constructor to create object
        public static int StartingID
        { get { return startID; } }
        public Student(int StudentIDs, String First, String Last, String Emails, String Phone, String University, String Majors, double Grad, String Intern, String Employment)
        {
            StudentID = startID;
            FirstName = First;
            LastName = Last;
            Email = Emails;
            PhoneNumber = Phone;
            UniversityYear = University;
            Major = Majors;
            GradYear = Grad;
            InternshipStat = Intern;
            EmploymentStatus = Employment;
            studentadd();
        }
        //default constructor for object
        public Student()
        {
            StudentID = startID;
            FirstName = "Prince";
            LastName = "Harry";
            Email = "PrinceH@dukes.jmu.edu";
            PhoneNumber = "(805)727-7890";
            UniversityYear = "Freshman";
            Major = "CIS";
            GradYear = 2022;
            InternshipStat = "None";
            EmploymentStatus = "None";
            studentadd();
        }

        //keep track of the studentID and add when a new object is created
        static public void studentadd()
        {
            startID++;
        }

    }

}