<%@ Page Title="" Language="C#" MasterPageFile="~/DukeGroups.Master" AutoEventWireup="true" CodeBehind="ModifyScholarship.aspx.cs" Inherits="Lab_1_.ModifyScholarship" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="ModifyScholarships" runat="server" Text="Modify Student" Font-Bold="true" Font-Size="Larger"></asp:Label>
        <br />
    <asp:TextBox ID="ScholarshipNamestxt" runat="server" PlaceHolder="Scholarship Name"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="ScholarshipValidator" runat="server" ControlToValidate="ScholarshipNamestxt" Text="Required Name"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
    <asp:TextBox ID="ScholarshipYeartxt" runat="server" PlaceHolder="Scholarship Year"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="YearValidator" runat="server" ControlToValidate="ScholarshipYeartxt" Text="Required Year"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RangeValidator ID="YearRangeValidator" runat="server" 
    ErrorMessage="Not Available Year, between 2022 and 2025" ControlToValidate="ScholarshipYeartxt" 
    MinimumValue="2022" MaximumValue="2025" Type="double" 
    ForeColor="Red" SetFocusOnError="true"></asp:RangeValidator>
        <br />
    <asp:TextBox ID="ScholarshipAmounttxt" runat="server" PlaceHolder="Scholarship Amount"></asp:TextBox>
    &nbsp;&nbsp;&nbsp;
    <asp:RequiredFieldValidator ID="AmountValidator" runat="server" ControlToValidate="ScholarshipAmounttxt" Text="Required Amount"></asp:RequiredFieldValidator>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RangeValidator ID="AmountRangeValidator" runat="server" 
    ErrorMessage="Not Available Amount, must be at least $1" ControlToValidate="ScholarshipAmounttxt" 
    MinimumValue="1" MaximumValue="10000000000000000000" Type="double" 
    ForeColor="Red" SetFocusOnError="true"></asp:RangeValidator>
        <br />
    <br />
    <br />
        <br />
    <br />
   <asp:Button ID="Population" runat="server" Text="Populate" onclick="Population_Click" CausesValidation="false"/>
    <asp:Button ID="Saving" runat="server" Text="Save" onclick="Saving_Click"/>
    <asp:Button ID="Committing" runat="server" Text="Commit" onclick="Committing_Click"/>
    <asp:Button ID="Clearing" runat="server" Text="Clear" onclick="Clearing_Click" CausesValidation="false"/>
    <br />
    <asp:TextBox ID="TextBoxHandler" runat="server" ></asp:TextBox>
    <br />
    <asp:ListBox ID="ScholarshipListBox" runat="server" postback="true" Width="503px"></asp:ListBox>

        <asp:GridView ID="GridViewScholarship" runat="server">
        </asp:GridView>

</asp:Content>
