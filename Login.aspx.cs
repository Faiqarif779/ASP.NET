using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem_Semester_Project
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtUname.Text = "";
                txtUPassword.Text = "";
            }
        }

        protected void btnLgn_Click(object sender, EventArgs e)
        {
            string name = txtUname.Text;
            string password = txtUPassword.Text;

            string db = @"Data Source=.\sqlexpress; Initial Catalog=StudentManagementDB; Integrated Security=True; Encrypt=True; TrustServerCertificate=True";
            SqlConnection con = new SqlConnection(db);
            con.Open();

            string query = "SELECT COUNT(*) FROM Users WHERE Username='" + name +"' AND Password='" + password + "'";

            SqlCommand cmd = new SqlCommand(query, con);
            int count = (int)cmd.ExecuteScalar();
            if (count > 0)
            {
                Response.Write("<script>alert('Login successful!');</script>");
                Response.Redirect("Dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Username or password is incorrect!');</script>");
            }
    }
}}