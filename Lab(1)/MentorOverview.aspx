<%@ Page Title="" Language="C#" MasterPageFile="~/DukeGroups.Master" AutoEventWireup="true" CodeBehind="MentorOverview.aspx.cs" Inherits="Lab_1_.MentorOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Label ID="MentorTitle" runat="server" Text="Mentor" Font-Bold="true" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="MentorName" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="MentorNameList" runat="server" AutoPostBack="True" DataSourceID="Mentors" DataTextField="FullName" DataValueField="MemberID">
    </asp:DropDownList>
        <asp:SqlDataSource ID="Mentors" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="Select Distinct Mem.MemberID, Mem.FirstName + ' '+ Mem.LastName as FullName from Mentor Men, Member Mem Where Mem.MemberID=Men.MemberID"></asp:SqlDataSource>
    <br />
        <br />
        <asp:Button ID="UpdateStudents" runat="server" Text="Update Students" OnClick="UpdateStudents_Click" />
    <br />
    <br />
    <asp:Label ID="StudentMentorlbl" runat="server" Text="Student(s) Mentoring:"></asp:Label>
    <asp:GridView runat="server" ID="grdStudent" EmptyDataText="No Student Selected"></asp:GridView> 
    <br />
    <br />
    <br />
    <p>
    </p>
</asp:Content>
