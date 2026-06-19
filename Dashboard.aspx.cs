using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem_Semester_Project
{
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = txtFname.Text;
            string connectionString = @"Data Source=.\sqlexpress; Initial Catalog=StudentManagementDB; Integrated Security=True; Encrypt=True; TrustServerCertificate=True";
            SqlConnection myDBCon = new SqlConnection(connectionString);
            myDBCon.Open();

            string cmd = "Select * from Students where Name='" + name + "'";
            SqlDataAdapter da = new SqlDataAdapter(cmd, myDBCon);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }

        protected void BtnShowAll_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=.\sqlexpress; Initial Catalog=StudentManagementDB; Integrated Security=True; Encrypt=True; TrustServerCertificate=True";
            SqlConnection myDBCon = new SqlConnection(connectionString);
            myDBCon.Open();

            string cmd = "Select * from Students";
            SqlDataAdapter da = new SqlDataAdapter(cmd, myDBCon);
            DataSet ds = new DataSet();
            da.Fill(ds);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}