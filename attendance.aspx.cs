using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_attendance_system
{
    public partial class attendance : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAttendance_Click(object sender, EventArgs e)
        {
            string studentID = txtStudentID.Text.Trim();

            // Check if the student ID is provided
            if (string.IsNullOrEmpty(studentID))
            {
                Label_message.Text = "Error: Please Enter Student ID";
                return;
            }

            // Check if the student has already marked attendance for today
            if (HasAlreadyMarkedAttendanceToday(studentID))
            {
                Label_message.Text = "Error: Attendance already marked for today";
                return;
            }

            // If not marked, proceed to mark attendance
            SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = 'D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf'; Integrated Security = True");

            using (conn)
            {
                string query = "INSERT INTO attendance (student_id) VALUES (@student_id)";
                SqlCommand cmd = new SqlCommand(query, conn);
                cmd.Parameters.AddWithValue("@student_id", studentID);

                try
                {
                    conn.Open();
                    cmd.ExecuteNonQuery();
                    Label_message.Text = "Attendance marked successfully";
                }
                catch (Exception ex)
                {
                    Label_message.Text = "Error! Please enter valid student ID";
                }
            }
        }

        // Function to check if the student has already marked attendance for today
        private bool HasAlreadyMarkedAttendanceToday(string studentID)
        {
            bool attendanceMarked = false;

            SqlConnection conn = new SqlConnection("Data Source = (LocalDB)\\MSSQLLocalDB; AttachDbFilename = 'D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf'; Integrated Security = True");
            string query = "SELECT COUNT(*) FROM attendance WHERE student_id = @student_id AND CAST(datetime AS DATE) = CAST(GETDATE() AS DATE)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@student_id", studentID);

            try
            {
                conn.Open();
                int count = (int)cmd.ExecuteScalar();
                if (count > 0)
                {
                    attendanceMarked = true;
                }
            }
            catch (Exception ex)
            {
                Label_message.Text = "Error: " + ex.Message;
            }
            finally
            {
                conn.Close();
            }

            return attendanceMarked;
        }
    }
}
