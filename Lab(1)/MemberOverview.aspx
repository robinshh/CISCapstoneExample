<%@ Page Title="" Language="C#" MasterPageFile="~/DukeGroups.Master" AutoEventWireup="true" CodeBehind="MemberOverview.aspx.cs" Inherits="Lab_1_.MemberOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <asp:Label ID="MemberTitle" runat="server" Text="Member" Font-Bold="true" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="MemberName" runat="server" Text="Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="MemberDrop" runat="server" AutoPostBack="True" DataSourceID="MemberNames" DataTextField="FullName" DataValueField="FullName" 
        
        >
    </asp:DropDownList>

        <asp:SqlDataSource ID="MemberNames" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="SELECT [FirstName] +' '+ [LastName] AS FullName FROM [Member]"></asp:SqlDataSource>


    <br />
    <br />
    <asp:Label ID="ChangeStudentlbl" runat="server" Text="Change Student:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ModifyStudentbttn" runat="server" Text="Modify" Onclick="ModifyStudentbttn_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="ChangeScholarshiplbl" runat="server" Text="Change Scholarship:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="ModifyScholarshipbttn" runat="server" Text="Modify" Onclick="ModifyScholarshipbttn_Click"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <br />
    <asp:Label ID="AvailableScholarshiplbl" runat="server" Text="Available Scholarships:"></asp:Label>
    <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="Scholarship">
            <Columns>
                <asp:BoundField DataField="ScholarshipName" HeaderText="ScholarshipName" SortExpression="ScholarshipName" />
                <asp:BoundField DataField="ScholarshipYear" HeaderText="ScholarshipYear" SortExpression="ScholarshipYear" />
                <asp:BoundField DataField="ScholarshipAmount" HeaderText="ScholarshipAmount" SortExpression="ScholarshipAmount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="Scholarship" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="SELECT [ScholarshipName], [ScholarshipYear], [ScholarshipAmount] FROM [Scholarship]"></asp:SqlDataSource>
    <br />
    <br />
    <asp:Label ID="CompanyContactslbl" runat="server" Text="Company Contacts:"></asp:Label>
    <br />
        <asp:GridView ID="GridView2" runat="server" DataSourceID="Jobs" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                <asp:BoundField DataField="InternshipDescription" HeaderText="InternshipDescription" SortExpression="InternshipDescription" />
                <asp:BoundField DataField="DateStart" HeaderText="DateStart" SortExpression="DateStart" />
                <asp:BoundField DataField="DateEnd" HeaderText="DateEnd" SortExpression="DateEnd" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="Jobs" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" SelectCommand="SELECT CompanyName, InternshipDescription, DateStart, DateEnd FROM Company CO, Contact CON, Job JO WHERE JO.ContactID=CON.ContactID AND CON.CompanyID=CO.CompanyID"></asp:SqlDataSource>

    <br />
</asp:Content>
