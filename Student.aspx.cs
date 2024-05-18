using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Student_attendance_system
{
    public partial class Student : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtRollNo.Text = "";
            txtEmail.Text = "";
            txtContact.Text = "";
            Label_message.Text = "";

            // Reset the selected index of the DropDownList control
            ddlClass.SelectedIndex = 0;
        }

        protected void btnAddStudent_Click(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = 'D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf'; Integrated Security = True");

            using (conn)
            {

                string query = "INSERT INTO student (first_name, last_name, rollno, class, email, contact) VALUES (@first_name, @last_name, @rollno, @class, @email, @contact)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@first_name", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@last_name", txtLastName.Text);
                cmd.Parameters.AddWithValue("@rollno", txtRollNo.Text);
                cmd.Parameters.AddWithValue("@class", ddlClass.Text);
                cmd.Parameters.AddWithValue("@email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@contact", txtContact.Text);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                   
                    Label_message.Text="Student added successfully";
                    
                }
                catch (Exception ex)
                {
                   Label_message.Text = "Student not added" + ex.Message;
                }
            }
        }
    }
}