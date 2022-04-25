<%@ Page Title="" Language="C#" MasterPageFile="~/DukeGroups.Master" AutoEventWireup="true" CodeBehind="CompanyOverview.aspx.cs" Inherits="Lab_1_.CompanyOverview" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="CompanyTitle" runat="server" Text="Company" Font-Bold="true" Font-Size="Larger"></asp:Label>
    <br />
    <br />
    <asp:Label ID="CompanyName" runat="server" Text="Company Name:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="CompanyList" runat="server" AutoPostBack="True" DataSourceID="CompanyData" DataTextField="CompanyName" DataValueField="CompanyID">
    </asp:DropDownList>
     <asp:SqlDataSource ID="CompanyData" runat="server" ConnectionString="<%$ ConnectionStrings:Lab1 %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [CompanyName], [CompanyID] FROM [Company]"></asp:SqlDataSource>
     <br />
     <asp:Button ID="CompanyUpdate" runat="server" Text="UpdateInfo" OnClick="CompanyUpdate_Click" />
    <br />
    <br />
    <asp:Label ID="ContactLabel" runat="server" Text="Contact:"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;    <asp:GridView  
                    runat="server"  
                    ID="grdOrderResults"  
                    EmptyDataText="No Student Selected"></asp:GridView> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <br />
    <br />
    <asp:Label ID="AvailableJobslbl" runat="server" Text="Available Jobs:"></asp:Label>
    <br />
    <br />
    <asp:GridView  
                    runat="server"  
                    ID="AvailableJob"  
                    EmptyDataText="No Job Selected"></asp:GridView> 


</asp:Content>
