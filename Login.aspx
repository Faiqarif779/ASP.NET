<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="StudentManagementSystem_Semester_Project.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - NSU Student Management System</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 115px;
            text-align: center;
            font-weight: 700;
            font-size: xx-large;
            background-color:antiquewhite
        }
        .auto-style3 {
            height: 47px;
        }
        .auto-style4 {
            height: 49px;
            text-align: left;
        }
        .auto-style5 {
            height: 49px;
            text-align: right;
            font-size: large;
        }
        .auto-style6 {
            height: 47px;
            font-size: medium;
        }
        .auto-style7 {
            font-size: medium;
        }
        .auto-style9 {
            height: 19px;
        }
        .auto-style10 {
            height: 55px;
        }
        .auto-style11 {
            height: 26px;
        }
        #btnLgn {
            background-color: antiquewhite;
            font-weight: 700;
        }
        #btnLgn:hover {
            background-color: black;
            color: white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
    <tr>
        <td class="auto-style2" colspan="2">NSU STUDENT MANAGEMENT SYSTEM</td>
    </tr>
    <tr>
        <td width="30%">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style6" style="text-align: right"><strong>Username&nbsp; </strong></td>
        <td class="auto-style3">
            <asp:TextBox ID="txtUname" runat="server" Width="246px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUname" Display="Dynamic" ErrorMessage="Please Enter Username!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style5"><strong><span class="auto-style7">Password</span>&nbsp; </strong></td>
        <td class="auto-style4">
            <asp:TextBox ID="txtUPassword" runat="server" Width="246px" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtUPassword" Display="Dynamic" ErrorMessage="Plaese Enter Password" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style10"></td>
        <td class="auto-style10">
            <asp:Button ID="btnLgn" runat="server" Text="Login" EnableTheming="True" OnClick="btnLgn_Click" Width="77px" />
        </td>
    </tr>
    <tr>
        <td class="auto-style9"></td>
        <td class="auto-style9">&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style11"></td>
        <td class="auto-style11"></td>
    </tr>
</table>
    </form>
</body>
</html>
