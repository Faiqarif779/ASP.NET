<%@ Page Title="Add Student" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="Add.aspx.cs" Inherits="StudentManagementSystem_Semester_Project.Add" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align: center">Add Student</h2>
    <table style="width: 100%">
        <tr>
            <td width="45%" style="text-align: right; height: 45px">Name</td>
            <td style="height: 45px">
                <asp:TextBox ID="txtSname" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtSname" Display="Dynamic" ErrorMessage="Name cannot be null!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 44px">Email</td>
            <td style="height: 44px">
                <asp:TextBox ID="txtSemail" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtSemail" Display="Dynamic" ErrorMessage="Email is invalid!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 45px">Phone</td>
            <td style="height: 45px">
                <asp:TextBox ID="txtSphone" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtSphone" Display="Dynamic" ErrorMessage="Phone Number is Required!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^03[0-9]{9}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 44px">Enrollement Date</td>
            <td style="height: 44px">
                <asp:TextBox ID="txtSEdate" runat="server" Width="200px"></asp:TextBox>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtSEdate" Display="Dynamic" ErrorMessage="Date is invalid! Format should be YYYY-MM-DD" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d{4}-\d{2}-\d{2}$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 44px">Address</td>
            <td style="height: 44px">
                <asp:TextBox ID="txtAdr" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtAdr" Display="Dynamic" ErrorMessage="Address is required!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 44px">CGPA</td>
            <td style="height: 44px">
                <asp:TextBox ID="txtCGPA" runat="server" Width="200px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtCGPA" Display="Dynamic" ErrorMessage="Range should be between 0-4" Font-Bold="True" ForeColor="Red" MaximumValue="4" MinimumValue="0" SetFocusOnError="True" Type="Double"></asp:RangeValidator>
            </td>
        </tr>
        <tr>
            <td style="text-align: right; height: 45px"></td>
            <td style="height: 45px">
                <asp:Button ID="btnAdd" runat="server" Text="Add" Width="80px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td style="text-align: right">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
