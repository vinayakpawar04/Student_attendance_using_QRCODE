<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Student_attendance_system.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8" />
    <title>Admin Login</title>
    <link href="css/adminlogin.css" rel="stylesheet" type="text/css" />
    <style>

body{
    display: flex;
    justify-content: center;
    align-items: center; 
    background-image: url('Images/background-learner.jpg');
    background-repeat: no-repeat;
    background-size: cover;

}
.container {
    color: rgb(0, 0, 0);
    display:flex;
    flex-flow: column;
    justify-content: center;
    align-items: center;
    text-align: center;
    height: 100%;
    width: 400px;
    margin: 20% 0px;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.9);
    background-color: teal;
}

h2 {
    font-size: 30px;
}

input[type="text"],
input[type="password"] {
    width: 250px;
    padding: 10px;
    margin: 5px 0;
    color: #000000;
    border: 2px solid #000000;
    border-radius: 30px;
    background: transparent;
    box-shadow: 0 0 4px rgb(0, 0, 0);

}

input::placeholder{
    color: #000000;
}

input[type="submit"] {
    width: 150px;
    display: flex;
    justify-content: center;
    align-items: center;
    background: #62ea90;
    color: #000000;
    font-weight: bold;
    padding: 10px;
    margin:30px 0px;
    margin-left: 130px;
    border-radius: 30px;
    cursor: pointer;
}

.anchor{
    margin-left: 40%;
}

a{
    text-decoration: none;
    color: black;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
            <div class="container">
                <img src="Images/adminlogo.png" alt="photo" style="height: 100px; width: 100px;" />
                <h1>Admin Login</h1>
                

                <asp:Panel ID="pnlAdminLogin" runat="server" Visible="true">
                    <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="input-field" required></asp:TextBox>
                    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="input-field" required></asp:TextBox>
                    <br /><br />
                    <a class="anchor" href="forget.aspx">Forget password</a>
                    <asp:Button ID="btnLogin" runat="server" Text="LogIn" CssClass="button" OnClick="btnLogin_Click" />
                    <div>
                        Not registered?<a href="registerForm.aspx">Register here...</a>
                    </div>
                    <asp:Label ID="Login_Error_Label" runat="server"></asp:Label>
                </asp:Panel>
            </div>
    </form>
</body>
</html>

