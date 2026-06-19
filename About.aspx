<%@ Page Title="About" MasterPageFile="~/Site.Master" Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="StudentManagementSystem_Semester_Project.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
        .about-section {
            background-color: #ffffff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
            max-width: 900px;
            margin: 20px auto;
        }
        .about-title {
            color: #343a40;
            border-bottom: 3px solid #343a40;
            padding-bottom: 10px;
            margin-bottom: 20px;
        }
        .tech-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }
        .tech-table th, .tech-table td {
            border: 1px solid #dee2e6;
            padding: 12px;
            text-align: left;
        }
        .tech-table th {
            background-color: #f1f3f5;
            color: #343a40;
        }
        .feature-list {
            line-height: 1.8;
            padding-left: 20px;
        }
    </style>

    <div class="about-section">
        <h2 class="about-title">About NSU Student Management System</h2>
        
        <p>
            The <strong>NSU Student Management System</strong> is a comprehensive web application designed to streamline academic administrative tasks. 
            Built as a core semester project, this platform enables administrators to securely log in, view student records via an interactive dashboard, 
            add new student details with strict form validations, and fully manage records with integrated edit and delete systems.
        </p>

        <h3>Core Features</h3>
        <ul class="feature-list">
            <li><strong>Secure Authentication:</strong> Secure gatekeeping via user login verification directly against database credentials.</li>
            <li><strong>Interactive Dashboard:</strong> Centralized data hub displaying student grids loaded dynamically from SQL Server.</li>
            <li><strong>Data Management (CRUD):</strong> Fully operational forms to add new students, update existing details safely, and remove old data.</li>
            <li><strong>Form Validation:</strong> Strict client and server-side rules checking email structures, proper phone formats, and CGPA ranges (0.00 - 4.00).</li>
        </ul>

        <h3>Technical Architecture</h3>
        <p>This application follows a standard 2-tier architecture binding the web user interface directly with a relational database backend.</p>
        
        <table class="tech-table">
            <thead>
                <tr>
                    <th>Component</th>
                    <th>Technology Used</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><strong>Frontend Engine</strong></td>
                    <td>ASP.NET Web Forms (.aspx), HTML5, CSS3 (Flexbox Layouts)</td>
                </tr>
                <tr>
                    <td><strong>Code-Behind Logic</strong></td>
                    <td>C# (C-Sharp) object-oriented scripting</td>
                </tr>
                <tr>
                    <td><strong>Database Management</strong></td>
                    <td>Microsoft SQL Server (SQL Express instance)</td>
                </tr>
                <tr>
                    <td><strong>Data Access Link</strong></td>
                    <td>ADO.NET (`SqlConnection`, `SqlCommand`, `SqlDataAdapter`)</td>
                </tr>
            </tbody>
        </table>

        <br />
        <h3>Project Development</h3>
        <p>
            Developed as a practical demonstration of state management, master page layouts, relational database integration, and secure form processing 
            within the .NET Framework ecosystem.
        </p>
    </div>
</asp:Content>