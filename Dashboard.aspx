<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="StudentManagementSystem_Semester_Project.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
            h2 {
                color: #343a40;
                border-bottom: 3px solid #343a40;
                padding-bottom: 10px;
                margin-bottom: 20px;
            }
            p {
                font-size: 16px;
                color: #555;
            }
            .filter-section {
                margin-bottom: 20px;
            }
            .filter-section label {
                font-weight: bold;
                margin-right: 10px;
            }
            .filter-section input[type="text"] {
                padding: 5px;
                width: 200px;
            }
            .filter-section button {
                padding: 5px 10px;
                background-color: #007bff;
                color: white;
                border: none;
                cursor: pointer;
            }
            .filter-section button:hover {
                background-color: #0056b3;
            }
            .gridview {
                background-color: #ffffcc;
                border-style: none;
            }
    </style>
    <h2>Dashboard</h2>
    <p>&nbsp;Welcome to NSU Student Management System</p>
        <p style="height: 41px">&nbsp;<strong>Name</strong>&nbsp;<asp:TextBox ID="txtFname" runat="server"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Filter" Width="79px" />
        </p>
        <p style="height: 41px">
            <asp:Button ID="BtnShowAll" runat="server" OnClick="BtnShowAll_Click" Text="Show All" />
        </p>
        <asp:GridView ID="GridView1" runat="server" BackColor="#FFFFCC" BorderStyle="None">
        </asp:GridView>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
</asp:Content>