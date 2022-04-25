<%@ Page Title="" Language="C#" MasterPageFile="~/DukeGroups.Master" AutoEventWireup="true" CodeBehind="StudentOverview.aspx.cs" Inherits="Lab_1_.StudentOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="StudentTitle" runat="server" Text="Student" Font-Bold="true" Font-Size="Larger"></asp:Label>
    <p>
</p>
    <asp:Label ID="StudentName" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <asp:DropDownList ID="StudentList" runat="server" AutoPostBack="True" DataSourceID="Student" DataTextField="FullName" DataValueField="StudentID"></asp:DropDownList>
 
        <asp:SqlDataSource ID="Student" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="SELECT StudentID, [FirstName] +' '+ [LastName] AS FullName FROM [Student]"></asp:SqlDataSource>
 
        <br />
    <asp:Button ID="update" runat="server" Text="Update Mentor" OnClick="update_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <br />
    <asp:Label ID="MentorName" runat="server" Text="Mentor:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:GridView runat="server" ID="MentorResults" EmptyDataText="No Student Selected"></asp:GridView> 
    <br />
    <br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Scholarships" runat="server" Text="Scholarships:"></asp:Label>
    <br />
        <asp:GridView ID="ScholarshipList" runat="server" DataSourceID="ScholarshipData" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="ScholarshipName" HeaderText="ScholarshipName" SortExpression="ScholarshipName" />
                <asp:BoundField DataField="ScholarshipYear" HeaderText="ScholarshipYear" SortExpression="ScholarshipYear" />
                <asp:BoundField DataField="ScholarshipAmount" HeaderText="ScholarshipAmount" SortExpression="ScholarshipAmount" />
            </Columns>
        </asp:GridView>
    <asp:SqlDataSource ID="ScholarshipData" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="SELECT [ScholarshipName], [ScholarshipYear], [ScholarshipAmount] FROM [Scholarship]"></asp:SqlDataSource>
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="JobsLabel" runat="server" Text="Jobs:"></asp:Label>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Jobs">
        <Columns>
            <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
            <asp:BoundField DataField="InternshipDescription" HeaderText="InternshipDescription" SortExpression="InternshipDescription" />
            <asp:BoundField DataField="DateStart" HeaderText="DateStart" SortExpression="DateStart" />
            <asp:BoundField DataField="DateEnd" HeaderText="DateEnd" SortExpression="DateEnd" />
        </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Jobs" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="SELECT CompanyName, InternshipDescription, DateStart, DateEnd FROM Company CO, Contact CON, Job JO WHERE JO.ContactID=CON.ContactID AND CON.CompanyID=CO.CompanyID;
"></asp:SqlDataSource>
    <br />
    <br />

</asp:Content>
