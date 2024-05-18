<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="GenerateQR.aspx.cs" Inherits="Student_attendance_system.GenerateQR" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .container {
            box-sizing:border-box;
            font-size:70px;
            color:white;
            width: 70%;
            height:460px;
            margin: 50px auto;
            padding:20px 50px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
            background-color: rgba(0, 0, 0, 0.7);
            border: 1px solid white;
            opacity: 1.1;
            display:flex;
            justify-content:center;
            align-items:center;
        }

        .container2 {
            box-sizing:border-box;
            font-weight:bold;
            font-size:larger;
            color:white;
            width: 450px;
            height:400px;
            padding:20px 50px;
            opacity: 1.1;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(document).ready(function () {
            // Call regenerateQRCode initially
            regenerateQRCode();

            // Call regenerateQRCode every 60 seconds (60000 milliseconds)
            setInterval(regenerateQRCode, 60000);
        });
        function regenerateQRCode() {
            
            // Call the code-behind method using AJAX
            $.ajax({
                type: "POST",
                url: "GenerateQR.aspx/RegenerateQRCode",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    // Set the new QR code image source
                    $('#imgQRCode').attr('src', 'data:image/png;base64,' + response.d);
                },
                failure: function (response) {
                    alert(response.d);
                }
            });
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <div class="container">
        <div>
            Scan This QR Code To Mark Attendance
        </div>
        <asp:Image ID="imgQRCode" class="container2" runat="server" />
      
    </div>
</asp:Content>
