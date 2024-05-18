using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Student_attendance_system
{
    public partial class MarkAttendance : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            // Retrieve QR code content from query parameter
            string qrContent = Request.QueryString["qrContent"];

            // Display QR code content on the page (optional)
           /* lblQRContent.Text = qrContent;*/

            // You can use qrContent to further process attendance marking
        }
    }
}