using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace Student_attendance_system
{
    public partial class registerForm : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf\";Integrated Security=True");
            
            using (conn)
            {

                string query = "INSERT INTO register (fname, lname, address, contact, email, username, password) VALUES (@fname, @lname, @address, @contact, @email, @username, @password)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("fname",txtFirstName.Text);
                cmd.Parameters.AddWithValue("lname", txtLastName.Text);
                cmd.Parameters.AddWithValue("address", txtAddress.Text);
                cmd.Parameters.AddWithValue("contact", txtContactNo.Text);
                cmd.Parameters.AddWithValue("email", txtEmail.Text);
                cmd.Parameters.AddWithValue("username", txtUsername.Text);
                cmd.Parameters.AddWithValue("password", txtPassword.Text);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Response.Write("Registration successful!");
                }
                catch (Exception ex)
                {
                    Response.Write("Error: " + ex.Message);
                }
            }
        }
    }
}