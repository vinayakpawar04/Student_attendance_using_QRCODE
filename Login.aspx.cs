using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_attendance_system
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"D:\\STUDENT ATTEDANCE SYSTEM USING QR CODE\\Student attendance system\\Student attendance system\\App_Data\\student_attendance_db.mdf\";Integrated Security=True");
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sda = new SqlDataAdapter();
        DataSet ds = new DataSet();
        
            protected void Page_Load(object sender, EventArgs e)
        {
            Login_Error_Label.Text = string.Empty;
            conn.Open();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string user = txtUsername.Text.Trim();
            cmd.CommandText="Select * from register where username='"+ txtUsername.Text +"'and password='"+ txtPassword.Text +"'";
            cmd.Connection = conn;
            sda.SelectCommand = cmd;
            sda.Fill(ds, "register");
            if (ds.Tables[0].Rows.Count > 0)
            {
                Session["register"] = ds.Tables[0].Rows[0]["username"];
                /*Response.Redirect("~/home.aspx");*/
                ScriptManager.RegisterStartupScript(this, this.GetType(), "redirect", "window.location.href = 'home.aspx';", true);
            }
            else
            {
                string script = "alert('Invalid information');";
                ClientScript.RegisterStartupScript(this.GetType(), "ErrorAlert", script, true);
                return;
            }
            conn.Close();
        }
    }
}