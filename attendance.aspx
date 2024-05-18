<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="attendance.aspx.cs" Inherits="Student_attendance_system.attendance" %>

<!DOCTYPE html>

<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Attendance Form</title>
    <link rel="stylesheet" href="styles.css" />
    <style>
        .container {
     box-sizing:border-box;
     color:white;
     width: 40%;
     height:400px;
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
     flex-flow:column;
 }

input[type="text"] {
    width: auto;
    padding: 0.5rem;
    border: 1px solid #ccc;
    border-radius: 5px;
}

input[type="submit"]{
    width: 100px;
    display: flex;
    margin:20px;
    justify-content: center;
    align-items: center;
    background: #62ea90;
    color: #000000;
    font-weight: bold;
    padding: 10px;
    border-radius: 30px;
    cursor: pointer;
}


    </style>
</head>
<body>
    <form id="Form1" runat="server">
        <div class="container">
            <h1>Attendance Form</h1>
      
                  <!--<tr>
                  <td>
                        First Name:
                        <asp:TextBox ID="TextBox1" runat="server" placeholder="First Name" required="true"></asp:TextBox><br /><br />
                
                    </td>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        Last Name:
                        <asp:TextBox ID="TextBox2" runat="server" placeholder="Last Name" required="true"></asp:TextBox><br /><br />

                    </td>
                </tr>
                <tr>
                       <td> 
                           Class:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox3" runat="server" placeholder="Class" required="true"></asp:TextBox><br /><br />
                        </td> 
                         <td>
                            &nbsp;&nbsp;&nbsp;
                            Roll No.:&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="TextBox4" runat="server" placeholder="RollNo" required="true"></asp:TextBox><br /><br />
                         </td>
                </tr>
                <tr>
                <td colspan="2">
                Email:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="email" runat="server" placeholder="E-mail" type="email" required="true"></asp:TextBox><br /><br />
                </td></tr>
                
               <tr><td colspan="2">
                Contact:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="phone" runat="server" placeholder="Phone Number" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required="true"></asp:TextBox><br /><br />
                </td></tr>-->



                 <asp:Table ID="tblStudentInfo" runat="server">
                    <asp:TableRow>
                        <asp:TableCell>
                        <asp:Label ID="lblFirstName" runat="server" Text="Enter student ID:" AssociatedControlID="txtStudentID"></asp:Label>
                        </asp:TableCell>
                    <asp:TableCell>
                            <asp:TextBox ID="txtStudentID" runat="server" Required="true"></asp:TextBox>
                            </asp:TableCell>
                   </asp:TableRow>
                     <asp:TableRow CssClass="button">
                         <asp:TableCell HorizontalAlign="Center" ColumnSpan="2" >
                             <asp:Button ID="btnAttendance" runat="server" Text="Submit" OnClick="btnAttendance_Click" />

                         </asp:TableCell>
                     </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell ColumnSpan="2">
                            <asp:Label ID="Label_message" runat="server"></asp:Label>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
          </div>
    </form>
</body>
</html>
