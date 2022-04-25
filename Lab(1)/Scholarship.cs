using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
// File: Scholarship.cs
// Author: Henry Robinson and Ryan Essex
// Date: 2/10/2022
// Purpose: class to deal with scholarship objects


namespace Lab_1_
{
    public class Scholarship
    {
        //create variables
        private double ScholarshipID;
        private String SholarshipName;
        private double ScholarshipYear;
        private double ScholarshipAmount;
        private static double MemberID = 1;

        //create getters and setters
        public static int ScholarshipIDs
        {
            get { return startingScholarshipID; }
            set { startingScholarshipID = value; }
        }

        public string ScholarshipNames
        {
            get { return SholarshipName; }
            set { SholarshipName = value; }
        }
        public double SCholarshipYears
        {
            get { return ScholarshipYear; }
            set { ScholarshipYear = value; }
        }
        public double ScholarshipAmounts
        {
            get { return ScholarshipAmount; }
            set { ScholarshipAmount = value; }
        }
        public static double MemberIDs
        {
            get { return MemberID; }
            set { MemberID = value; }
        }

        private static int startingScholarshipID = 11;

        //create an overloaded constructor 
        public Scholarship(int ID, String Name, double Year, double Amount, double Member)
        {
            ScholarshipID = startingScholarshipID;
            SholarshipName = Name;
            ScholarshipYear = Year;
            ScholarshipAmount = Amount;
            MemberID = 1;
            scholarshipadd();
        }
        //create a default constructor
        public Scholarship()
        {
            ScholarshipID = startingScholarshipID;
            SholarshipName = "Ezell Award";
            ScholarshipYear = 2025;
            ScholarshipAmount = 484;
            MemberID = 1;
            scholarshipadd();
        }
        //keep track of the scholarshipid and add to it when a method is used
        static public void scholarshipadd()
        {
            startingScholarshipID++;
        }
    }
}