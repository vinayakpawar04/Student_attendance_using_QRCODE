<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Student_attendance_system.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Student QR Code Attendance System</title>
    <link href="css/style.css" rel="stylesheet" type="text/css" />
    <style>
        body, h1, h2, p {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
}


#navbar{
    position: -webkit-sticky;
    position: sticky;
    padding:5px;
    top: 0;
    background-color: white;
    border-bottom: 0.3px solid black;
    margin: 0px;
}

header {
    height: 55px;
    color: #06309c;
    padding-right: 0px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    margin-right: 5px;
    /* overflow: hidden;  */
   
}



nav ul li a {
    text-decoration: none;
    font-size: 14px;
    color: rgba(31, 28, 28, 0.858);
    font-weight: bold;
    padding: 7px;
    margin-right: 10px;
}

nav ul li {
    display: inline;
    margin-left: 7px;
    margin-right: 20px;
}

nav ul li a:hover
{
    color: white;
    background-color: rgb(19, 49, 148);
    border-radius: 5px;
}

nav ul li:last-child {
    margin-right: 0;
}

nav a {
    text-decoration: none;
    
}

.hero {
    height: auto;
    width: auto;
    padding: 0px;
    color: #000000;
}

.welcome-section{
    height:100vh;
    border: 1px solid black;
    background-color: #101b24c8;
    color: white;
    justify-content: center;
    text-align: center;
   
}

.image{
    background: url('Images/new index image.jpg');
    background-repeat: no-repeat;
    background-size:cover;
    max-width:100%;
    height: auto;
}
.hero h1 {
    text-shadow: 2px 2px 4px #000000;
    height: auto;
    width:auto;
    font-size: 60px;
    margin-top: 17%;
    font-family: 'Times New Roman', Times, serif;
}

.hero p{
    height: auto;
    width: auto;
    margin: 20px 50px 30px 100px;
    font-size: larger;
}

.cta-button {
    text-align: center;
    height: 10px;
    width: 100px;
    padding: 10px 20px;
    background-color: #0f6bd4;
    color: #fffefe;
    text-decoration: none;
    border-radius: 5px;
}
.cta-button:hover{
    background-color: #0c40c2;
    transition: box-shadow ease-in-out;
    box-shadow: 5px 5px 10px 0px #201b1b;
    transform: scale(1.1);
}

.s1div{
    padding: 0px;
    margin: 0px;
    justify-content: center;
    text-align: center;
    font-size: 20px; 
    color: #272424f2;
    font-family:Verdana, Geneva, Tahoma, sans-serif;
}

.s1div p{
    font-size: 20px;
}

.s1div h4{
    color: #227694;
    height: 10px;
    font-size: 40px;
}

.kidsimg{
    margin: 30px;
    width: auto;
    display: flex;
    justify-content: center;
    align-items: center;
    text-align: start;
    font-size:x-large;
}

.image2{
    padding-right: 3%;
    height: auto;
    width:auto;
    margin-left: 15%;
}
img{
    height: 350px;
    min-width: auto;
}

.management{
    margin: 50px 50px;
    height: auto;
    width: auto;
    padding:0px;
    display: flex;
    justify-content: center;
    text-align: center;
    font-family:Verdana, Geneva, Tahoma, sans-serif;
}


.manage{
    height: auto;
    border: 0.5px solid black;
    width: 400px;
    padding: 10px;
    margin: 20px;
}

.manage:hover{
    transition: box-shadow 0.2s ease-in-out;
    box-shadow: 5px 5px 10px 0px #201b1b;
    transform: scale(1.1);
    position: relative;
    opacity: 1;
}

.manage img{
    height: 60px;
    padding-top: 10px;
}

.testimonial {
    box-sizing:border-box;
    background-color: #dedada;
    padding:20px 50px;
    height: 100px;
    width: 80%;
    text-align:center;
    border-radius: 5px;
    margin: auto;
    font-size: xx-large;
}

.table {
    box-sizing:border-box;
    width: 100%;
    background-color: #272424f2;
    color: #fff;
    padding: 20px;
    display: flex;
    flex-flow: row;
    justify-content: space-between;
    align-items:center; 
    height: auto;
    font-size: medium;
}

.child-footer{
    display: flex;
    flex-flow: column;
    width: 20%;
    height: 150px;
}

footer {
    background-color: #3d3c3c;
    padding: 10px 0;
    text-align: center;
    display:flex;
    align-items:center;
    justify-content:center;
    height: 40px;
    font-size:medium;
}

footer p{
    text-decoration: none;
    color: rgb(255, 255, 255);
}
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <header id="navbar">
            <h2 style="display:flex; align-items:center">
                <img src="Images/newlogo.png" style="height:50px; width:60px; border-radius:50%; margin-left:100px" />
                Student Attendance Using QR Code
            </h2>
            <nav>
                <ul>
                    <li><a href="#">Home</a></li>
                    <li><a href="about.aspx">About Us</a></li>
                    <li><a href="#feature">Feature</a></li>
                    <li><a href="#">Contact Us</a></li>
                </ul>
            </nav>
        </header>
        <section class="hero">
            <div class="image">
                <div class="welcome-section">
                    <h1>Welcome to the Student Attendance <br /> System</h1>
                    <p>Efficiently track student attendance with our QR code authentication system.</p>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Login.aspx" CssClass="cta-button">Get Started</asp:HyperLink>
                </div>
            </div>
        </section>
        <section>
            <div class="s1div">
                <h4>Student Attendance Management</h4>
                <p>Managing Attendance takes no time, with QR code. Web Based Attendance Management Software</p>
                <hr />
                <div class="kidsimg">
                    <div class="image2">
                        <img src="Images/student-Attendance.png" alt="kids image" />
                    </div>
                    <div>
                        <p><b>What is Student Attendance Management System?</b> <br /><br />
                            Student Attendance is a Timelabs attendance management software module. It is designed to handle
                            the various attendance requirements of public and private schools of all sizes. </p><br /><p>From almost
                            effortlessly recording attendance, to producing daily attendance, absentee record and
                            letters and documents. Student Attendance module simplifies a wide range of school attendance
                            tasks with ease.
                        </p><br /><p>
                            One of the best feature of this software module is the online presence so the schools can access
                            all student and staff attendance data online or via hand-held devices.</p>
                    </div>
                </div>
            </div>
        </section>
        <section id="feature">
            <h1 class="management" style="font-size: xx-large; margin-top: 150px;">Key features</h1>
            <hr />
            <div class="management">
                <div class="manage">
                    <img src="Images/real-time.png" alt="real-time" />
                    <h3>Capture Real-Time Attendance</h3> Our integrated Real Time Monitor utility capture student's real time attendance logs on the PC
                </div>
                <div class="manage">
                    <img src="Images/accurate.png" alt="accurate" />
                    <h3>Accurate Student Attendance</h3> Raw Data from device downloaded into system database and have accuracy of Student Attendance
                </div>
                <div class="manage">
                    <img src="Images/daily.png" alt="daily" />
                    <h3>Daily Attendance Register</h3>system keeps the records of Student's daily attendance logs and maintain the same in Daily Attendance Register
                </div>
                <div class="manage">
                    <img src="Images/monthly.png" alt="monthly" />
                    <h3>Monthly Attendance Register</h3>System keeps the records of Student's daily attendance logs and maintain the same in Monthly Attendance Register as well
                </div>
            </div>
            <hr />
        </section>
        <br /><br /><br />
        <section>
            <h1 class="management" style="font-size: xx-large; ">What Our Users Say</h1>
            <div class="testimonial">
                <p>"The Student Attendance System has made our life so much easier. It's a game-changer for our
                    institution!"</p>
            </div>
        </section>
        <section>
            <h1 class="management" id="key" style="font-size: xx-large; margin-top: 150px;"> Key Benefits</h1>
            <hr />
            <div class="management">
                <div class="manage">
                    <img src="Images/1num.png" alt="real-time" />
                    <h3> Better student attendance management</h3> QR Code system ensures accurate and efficient tracking, reducing the chance of errors and promoting a streamlined process for both students and schools. It provides a secure and modern way to take attendance.
                </div>
                <div class="manage">
                    <img src="Images/2num.png" alt="accurate" />
                    <h3>Time Efficiency </h3>QR Code recognition is a quick and efficient method for clocking in and out. Employees can simply place their finger on the scanner, and the system can process the information rapidly, saving time for both employees and employers.
                </div>
                <div class="manage">
                    <img src="Images/3num.png" alt="daily" />
                    <h3>IMPROVES STUDENTS ATTENDANCE RATIOS
                        School</h3> management will improve student attendance ratios over time student attendance management system.
                </div>
                <div class="manage">
                    <img src="Images/4num.png" alt="monthly" />
                    <h3>QR Code authentication </h3> It utilizes the unique ridges and patterns on an individual's QR Code to grant secure access, providing a reliable and personalized method for identity verification in various applications, from unlocking devices to enhancing security systems.
                </div>
            </div>
        </section>
        <div class="table">
            <div class="child-footer">
                <h3>Student Attendance Using QR Code</h3>
                <a>Guide-T.R.Patil</a>
            </div>
            <div class="child-footer">
                <h3>Our team</h3>
                <a>Vinayak Pawar</a>
                <a>Mangesh Sankpal</a>
            </div>
            <div class="child-footer">
                <h3>Services</h3>
                <a>Privacy Policy</a>
                <a>Term & Conditions</a>
            </div>
            <div>
            </div>
            <div>
            </div>
        </div>
        <footer>
            <p>&copy; 2024 Student QR Code Attendance System</p>
        </footer>
    </form>
</body>
</html>
