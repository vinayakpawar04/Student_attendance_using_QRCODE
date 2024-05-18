using OfficeOpenXml;
using System;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Runtime.Remoting.Messaging;
using System.Web.UI;

namespace Student_attendance_system
{
    public partial class Report : Page
    {
        string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf\";Integrated Security=True";
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Populate the GridView with attendance data
                PopulateGridView();
            }
        }

        protected void btnFilter_Click(object sender, EventArgs e)
        {
            // Re-populate the GridView with filtered attendance data
            PopulateGridView();
        }

        private void PopulateGridView()
        {
            // Connect to the database and retrieve attendance data
            // Replace "YourConnectionString" with your actual database connection string
            DataTable dt = new DataTable();
            string tempFilePath = Server.MapPath("~/TempReports/AttendanceReport.xlsx");

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    // Construct the SQL query based on the selected filters
                    string sqlQuery = "SELECT student.Id AS Id, student.first_name AS FirstName, student.last_name AS LastName, student.rollno AS RollNo, student.class AS Class, " +
                                      "attendance.datetime AS Datetime, attendance.status AS Status " +
                                      "FROM student JOIN attendance ON student.Id = attendance.student_id WHERE 1 = 1";

                    // Add conditions based on the selected filters
                    if (!string.IsNullOrEmpty(txtId.Text.Trim()))
                    {
                        sqlQuery += " AND student.Id = @Id";
                    }

                    if (!string.IsNullOrEmpty(txtFromDate.Text.Trim()) && !string.IsNullOrEmpty(txtToDate.Text.Trim()))
                    {
                        sqlQuery += " AND attendance.datetime BETWEEN @FromDate AND @ToDate";
                    }

                    if (!string.IsNullOrEmpty(txtClassName.Text.Trim()))
                    {
                        sqlQuery += " AND student.class = @ClassName";
                    }

                    using (SqlCommand cmd = new SqlCommand(sqlQuery, con))
                    {
                        // Set parameters for roll number, date range, and class name filters
                        if (!string.IsNullOrEmpty(txtId.Text.Trim()))
                        {
                            cmd.Parameters.AddWithValue("@Id", txtId.Text.Trim());
                        }

                        if (!string.IsNullOrEmpty(txtFromDate.Text.Trim()) && !string.IsNullOrEmpty(txtToDate.Text.Trim()))
                        {
                            cmd.Parameters.AddWithValue("@FromDate", DateTime.Parse(txtFromDate.Text.Trim()));
                            cmd.Parameters.AddWithValue("@ToDate", DateTime.Parse(txtToDate.Text.Trim()));
                        }

                        if (!string.IsNullOrEmpty(txtClassName.Text.Trim()))
                        {
                            cmd.Parameters.AddWithValue("@ClassName", txtClassName.Text.Trim());
                        }

                        con.Open();
                        using (SqlDataAdapter sda = new SqlDataAdapter(cmd))
                        {
                            sda.Fill(dt);

                            // Bind the DataTable to the GridView
                            GridView1.DataSource = dt;
                            GridView1.DataBind();
                        }
                    }
                }

               
            }
            catch (Exception ex)
            {
                // Handle exceptions appropriately (logging, error messages, etc.)
                // For simplicity, you can display a generic error message
                lblErrorMessage.Text = "An error occurred: " + ex.Message;
            }
        }

        
        
    }
}
