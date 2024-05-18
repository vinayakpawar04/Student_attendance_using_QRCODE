using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace Student_attendance_system
{
    public partial class home : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["register"] != null)
                {
                    ShowAccount(Session["register"].ToString());
                }
                else
                {
                    Response.Write("Error occurred");
                }
            }
        }

        protected void ShowAccount(string username)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf\";Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT * FROM register WHERE username = @Username", con))
                {
                    cmd.Parameters.AddWithValue("@Username", username);

                    con.Open();
                    using (SqlDataReader reader = cmd.ExecuteReader()) 
                    {
                        if (reader.Read())
                        {
                            accountname.InnerText = reader["fname"].ToString() + " " + reader["lname"].ToString();
                            accountid.InnerText = reader["id"].ToString();
                            accountmobile.InnerText = reader["contact"].ToString();
                            accountaddress.InnerText = reader["address"].ToString();
                        }
                        else
                        {
                            Response.Write("No account found for the provided username.");
                        }
                    }
                }
            }
        }
    }
}
