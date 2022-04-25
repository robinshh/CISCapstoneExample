<%@ Page Title="" Language="C#" MasterPageFile="~/DukeGroups.Master" AutoEventWireup="true" CodeBehind="ModifyStudent.aspx.cs" Inherits="Lab_1_.ModifyStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ModifyStudents" runat="server" Text="Modify Student" Font-Bold="true" Font-Size="Larger"></asp:Label>
        <br />
    <asp:TextBox ID="FirstNametxt" runat="server" PlaceHolder="First Name"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="FirstNametxt" Text="Required First Name"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="LastNametxt" runat="server" PlaceHolder="Last Name"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="LastNametxt" Text="Required Last Name"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="Emailtxt" runat="server" PlaceHolder="Email"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Emailtxt" Text="Required Email"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="PhoneNumbertxt" runat="server" PlaceHolder="Phone Number" ></asp:TextBox>
    
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="PhoneNumbertxt" Text="Required Phone Number"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator2" runat="server" 
    ErrorMessage="Not Available Phone Number, please use 8 digit phone number with no extra characters" ControlToValidate="PhoneNumbertxt" 
    MinimumValue="1000000000" MaximumValue="9999999999" Type="double" 
    ForeColor="Red" SetFocusOnError="true"></asp:RangeValidator>
        <br />
    <asp:TextBox ID="UniversityYeartxt" runat="server" PlaceHolder="University Year"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="UniversityYeartxt" Text="Required University Year"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="Majortxt" runat="server" PlaceHolder="Major"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Majortxt" Text="Required Major"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="GradYeartxt" runat="server" PlaceHolder="Graduation Year"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="GradYeartxt" Text="Required Year"></asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" 
ErrorMessage="Not Available Graduation Year" ControlToValidate="GradYeartxt" 
MinimumValue="2022" MaximumValue="2026" Type="double" 
ForeColor="Red" SetFocusOnError="true"></asp:RangeValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="IntershipStatustxt" runat="server" PlaceHolder="Internship Status"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="IntershipStatustxt" Text="Required Internship Status"></asp:RequiredFieldValidator>
        <br />
    <asp:TextBox ID="JobStatustxt" runat="server" PlaceHolder="Job Status"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="JobStatustxt" Text="Required Job Status"></asp:RequiredFieldValidator>

    <br />
    <br />
        <br />
    <br />
   <asp:Button ID="Populate" runat="server" Text="Populate" onclick="Populate_Click" CausesValidation="false"/>
    <asp:Button ID="Save" runat="server" Text="Save" onclick="Save_Click"/>
    <asp:Button ID="Commit" runat="server" Text="Commit" onclick="Commit_Click"/>
    <asp:Button ID="Clear" runat="server" Text="Clear" onclick="Clear_Click" CausesValidation="false"/>
    <br />
    <asp:TextBox ID="TextBoxHandler" runat="server" ></asp:TextBox>
    <br />
    <asp:ListBox ID="StudentListBox" runat="server" postback="true" Width="503px"></asp:ListBox>

    <asp:GridView ID="GridViewStudents" runat="server">
    </asp:GridView>
</asp:Content>
