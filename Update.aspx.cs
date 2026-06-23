using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StudentManagementSystem_Semester_Project
{
    public partial class Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0; // Update tab show
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 1; // Delete tab show
        }

        protected void btn_Update_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=.\sqlexpress;Initial Catalog=StudentManagementDB;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";
            SqlConnection myDBCon = new SqlConnection(con);
            myDBCon.Open();

            string update = @"Update Students set Name='" + Convert.ToString(txtUpdateName.Text) + "',Email='" + Convert.ToString(txtUpdateEmail.Text) + "',Phone='" + Convert.ToString(txtUpdatePhone.Text) + "',CGPA=" + Convert.ToDouble(txtUpdateCGPA.Text) + " Where StudentID=" + Convert.ToInt32(txtID.Text);
            SqlCommand cmd = new SqlCommand(update, myDBCon);
            if(cmd.ExecuteNonQuery() > 0)
            {
                txtID.Text = txtUpdateName.Text = txtUpdateEmail.Text = txtUpdatePhone.Text = txtUpdateCGPA.Text = "";
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), Guid.NewGuid().ToString(),
                "alert('Student Updated Successfully!\nCheck Dashboard.');", true);
                txtID.Text = "";
                txtUpdateName.Text = "";
                txtUpdateEmail.Text = "";
                txtUpdatePhone.Text = "";
                txtUpdateCGPA.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error in Updating Record!\nPlease enter correct Student ID.');</script>");

            }
            myDBCon.Close();
        }

        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            string con = @"Data Source=.\sqlexpress;Initial Catalog=StudentManagementDB;Integrated Security=True;Encrypt=True;TrustServerCertificate=True";
            SqlConnection myDBCon = new SqlConnection(con);
            myDBCon.Open();

            string delete = "DELETE FROM Students WHERE StudentID=" + Convert.ToInt32(txtDeleteID.Text) + " AND Name='" + txtDeleteName.Text.Trim() + "'";
            SqlCommand cmd = new SqlCommand(delete, myDBCon);
            if (cmd.ExecuteNonQuery() > 0)
            {
                ScriptManager.RegisterStartupScript(this.Page, this.Page.GetType(), Guid.NewGuid().ToString(),
            "alert('Student Deleted Successfully!\nCheck Dashboard.');", true);
                txtDeleteID.Text = "";
                txtDeleteName.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error in Deleting Record!\nPlease enter correct Student ID and Name.');</script>");
            }
            myDBCon.Close();
        }
    }
}