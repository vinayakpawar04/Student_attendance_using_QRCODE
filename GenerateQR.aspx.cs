using System;
using System.Drawing;
using System.IO;
using System.Web;
using System.Web.Services;
using QRCoder;

namespace Student_attendance_system
{
    public partial class GenerateQR : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GenerateQRCode();
            }
        }

        [WebMethod]
        public static string RegenerateQRCode()
        {
            // Generate the URL to attendance.aspx with a time-limited token
            DateTime expirationTime = DateTime.Now.AddMinutes(1); // QR code valid for 10 minutes
            string token = Guid.NewGuid().ToString(); // Generate a unique token
            string attendancePageUrl = HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority) + HttpContext.Current.Request.ApplicationPath + "/attendance.aspx?token=" + token;

            // Save the token and its expiration time in a secure location, such as a database
            // For simplicity, this example does not store the token. You should implement secure storage.

            // Generate the QR code
            QRCodeGenerator qrGenerator = new QRCodeGenerator();
            QRCodeData qrCodeData = qrGenerator.CreateQrCode(attendancePageUrl, QRCodeGenerator.ECCLevel.Q);
            QRCode qrCode = new QRCode(qrCodeData);
            Bitmap qrCodeImage = qrCode.GetGraphic(20);

            // Convert QR code image to base64 string
            using (MemoryStream ms = new MemoryStream())
            {
                qrCodeImage.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();
                return Convert.ToBase64String(byteImage);
            }
        }

        private void GenerateQRCode()
        {
            // Call the code-behind method to generate the initial QR code
            string base64String = RegenerateQRCode();

            // Set the QR code image source
            imgQRCode.ImageUrl = "data:image/png;base64," + base64String;
        }
    }
}
