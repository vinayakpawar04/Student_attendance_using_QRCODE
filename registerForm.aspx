<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerForm.aspx.cs" Inherits="Student_attendance_system.registerForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Registration Form</title>
    <link href="css/registration.css" rel="stylesheet" type="text/css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: rgb(174, 194, 211);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 600px;
            padding: 20px;
            background-image:url('Images/register.jpg');
            background-size:cover;
            background-repeat:no-repeat;
            border-radius: 5px;
            box-shadow: 0 8px 12px 0 rgba(0, 0, 0, 0.2), 0 10px 20px 0 rgba(0, 0, 0, 0.5);
        }

        h2 {
            text-align: center;
        }

        label {
            display: block;
            margin: 10px 0;
        }

        .table{
            
            display:flex;
            justify-content:center;
            align-content:center;
            font-size:x-large;
        }

        .logininfo,
        input {
            padding: 10px;
            width: 100%;
            margin: 5px 0;
            background: transparent;
        }

        input[type="submit"] {
            background: #464ad2;
            color: #ffffff;
            border: none;
            padding: 10px;
            margin-top: 20px;
            border-radius: 3px;
            cursor: pointer;
            width: 100%;
            align-items:center;
        }

        input[type="submit"]:hover {
            background:#18af16; 
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" method="post">
        <div class="container">
            <h2>Admin Registration</h2>
            <table class="table">
                <tr>
                    <td>First Name:</td>
                    <td>
                        <asp:TextBox ID="txtFirstName" runat="server" placeholder="Enter first name..." CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>Last Name:</td>
                    <td>
                        <asp:TextBox ID="txtLastName" runat="server" placeholder="Enter last name..." CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td>
                        <asp:TextBox ID="txtAddress" runat="server" placeholder="Enter your address..." CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>Contact No.:</td>
                    <td>
                        <asp:TextBox ID="txtContactNo" runat="server" placeholder="+91........" CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>E-mail ID:</td>
                    <td>
                        <asp:TextBox ID="txtEmail" runat="server" placeholder="-----@gmail.com" CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>Username:</td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" placeholder="Enter username..." CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" placeholder="Enter password..." CssClass="input-field" required></asp:TextBox>
                        <br /><br />
                    </td>
                </tr>
            </table>

            <div class="logininfo">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="button" Width="378px" OnClick="btnRegister_Click"  />
            </div>
        </div>
    </form>
</body>
</html>
