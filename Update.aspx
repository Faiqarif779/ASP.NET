<%@ Page Title="Update/Delete" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="StudentManagementSystem_Semester_Project.Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<head>
      <style type="text/css">
          .auto-style1 {
              width: 100%;
           }
          .auto-style2 {
              height: 44px;
          }
          #navBar {
              background-color: #343a40;
              padding: 10px;
              margin-bottom: 20px;
          }
          #navBar ul {
              list-style-type: none;
              margin: 0;
              padding: 0;
              display: flex;
          }
          #navBar ul li {
              margin-right: 20px;
          }
          #navBar ul li a, #navBar ul li .aspNetDisabled {
              color: white;
              text-decoration: none;
              font-weight: bold;
              padding: 8px 16px;
              border-radius: 4px;
              transition: background-color 0.3s ease;
          }

          #navBar ul li a:hover, #navBar ul li .aspNetDisabled:hover {
              background-color: #495057;
          }


      </style>
</head>
    <menu id="navBar">
    <ul>
        <li><asp:LinkButton ID="btnUpdate" runat="server" OnClick="btnUpdate_Click">Update</asp:LinkButton></li>
        <li><asp:LinkButton ID="btnDelete" runat="server" OnClick="btnDelete_Click">Delete</asp:LinkButton></li>
    </ul>
</menu>

<asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0">
    
    <asp:View ID="ViewUpdate" runat="server">
        <%-- Update content here --%>
        <h3>Update Section</h3>
        <table style="width: 100%">
            <tr>
                <td width="15%" style="text-align: right; height: 45px">Student ID</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtID" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Student ID is required!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtID" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 45px">Name</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtUpdateName" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="Name is Required" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtUpdateName" ValidationGroup="UpdateGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 45px">Email</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtUpdateEmail" runat="server" Width="210px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" Display="Dynamic" ErrorMessage="Enter valid Email!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txtUpdateEmail" ValidationGroup="UpdateGroup"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 45px">Phone</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtUpdatePhone" runat="server" Width="210px"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" Display="Dynamic" ErrorMessage="Enter valid Phone number" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^(03[0-9]{2})[0-9]{7}$" ControlToValidate="txtUpdatePhone" ValidationGroup="UpdateGroup"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td style="text-align: right; height: 45px">CGPA</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtUpdateCGPA" runat="server" Width="210px"></asp:TextBox>
                    <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="CGPA Should be between 0-4" Font-Bold="True" ForeColor="Red" MaximumValue="4" MinimumValue="0" SetFocusOnError="True" Type="Double" ControlToValidate="txtUpdateCGPA" ValidationGroup="UpdateGroup"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 45px">&nbsp;</td>
                <td style="height: 45px">
                    <asp:Button ID="btn_Update" runat="server" Text="Update" Width="78px" OnClick="btn_Update_Click" OnClientClick="return confirm('Are you sure you want to update this record?');" ValidationGroup="UpdateGroup" />
                </td>
            </tr>
            <tr>
                <td style="height: 45px">&nbsp;</td>
                <td style="height: 45px">&nbsp;</td>
            </tr>
        </table>
    </asp:View>

    <asp:View ID="ViewDelete" runat="server">
        <%-- Delete content here --%>
        <h3>Delete Section</h3>
        <table class="auto-style1">
            <tr>
                <td width="15%" style="text-align: right; height: 45px">Student ID</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtDeleteID" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" Display="Dynamic" ErrorMessage="Student ID is required!" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtDeleteID" ValidationGroup="DeleteGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td width="15%" style="text-align: right; height: 45px">Student Name</td>
                <td style="height: 45px">
                    <asp:TextBox ID="txtDeleteName" runat="server" Width="210px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" Display="Dynamic" ErrorMessage="Name is Required" Font-Bold="True" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtDeleteName" ValidationGroup="DeleteGroup"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td style="height: 45px">&nbsp;</td>
                <td style="height: 45px"><asp:Button ID="btn_Delete" runat="server" Text="Delete" Width="78px" OnClick="btn_Delete_Click" OnClientClick="return confirm('Are you sure you want to delete this record?');" ValidationGroup="DeleteGroup" /></td>
            </tr>
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </asp:View>

</asp:MultiView>
</asp:Content>