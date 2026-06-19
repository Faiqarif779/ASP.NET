using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem_Semester_Project
{
    public partial class Add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=.\sqlexpress; Initial Catalog=StudentManagementDB; Integrated Security=True; Encrypt=True; TrustServerCertificate=True";
            SqlConnection myDBCon = new SqlConnection(connectionString);
            myDBCon.Open();

            string insert = "Insert into Students (Name, Email, Phone, Address, EnrollementDate, CGPA) Values ('" + txtSname.Text + "', '" + txtSemail.Text + "', '" + txtSphone.Text + "', '" + txtAdr.Text + "', '" + txtSEdate.Text + "', " + txtCGPA.Text + ")";
            SqlCommand cmd = new SqlCommand(insert, myDBCon);
            if(cmd.ExecuteNonQuery() > 0)
            {
                Response.Write("<script>alert('Student Added Successfully!');</script>");
                txtSname.Text = "";
                txtSemail.Text = "";
                txtSphone.Text = "";
                txtAdr.Text = "";
                txtSEdate.Text = "";
                txtCGPA.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error in Adding Record!');</script>");
            }
        }
    }
}