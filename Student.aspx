<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Student.aspx.cs" Inherits="Student_attendance_system.Student" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
            background-color: rgba(0, 0, 0, 0.7);
            border: 1px solid black;
            opacity: 1.1;
            margin: 0px;
        }

        .container1 {
            display: flex;
            flex-flow: row;
            flex-wrap: wrap;
            height: auto;
            width: 100%;        
            height:80vh;
            overflow: hidden;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
            background-color: rgba(0, 0, 0, 0.7);
            border: 1px solid black;
            opacity: 1.1;
        }

        .container {
            width: 500px;
            margin: 50px auto;
            padding:20px 50px;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.7);
            background-color: rgba(0, 0, 0, 0.7);
            border: 1px solid black;
            opacity: 1.1;
        }

        h1 {
            margin-left: 20px; 
            padding: 0;
            font-size: 30px;
        }

        table {
            width: 100%;
        }

        th, td {
            padding: 10px;
            color:white;
        }

        input[type="text"] {
            width: 80%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
input[type="submit"] {
    width: 100px;
    display: flex;
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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server"> 
    
    <div class="container1">

   
    <div class="container">
       
        <asp:Table ID="tblStudentInfo" runat="server" Height="427px">
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblFirstName" runat="server" Text="First Name:" AssociatedControlID="txtFirstName"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtFirstName" runat="server" placeholder="First name..." Required="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblLastName" runat="server" Text="Last Name:" AssociatedControlID="txtLastName"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtLastName" runat="server" placeholder="Last name..." Required="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblRollNo" runat="server" Text="Roll No:" AssociatedControlID="txtRollNo"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtRollNo" runat="server" TextMode="Number" Required="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblClass" runat="server" Text="Class:" AssociatedControlID="ddlClass"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList ID="ddlClass" runat="server">
                    <asp:ListItem Text="Select Class" Value="Select Class"></asp:ListItem>
                    <asp:ListItem Text="BCS" Value="BCS"></asp:ListItem>
                    <asp:ListItem Text="BCA" Value="BCA"></asp:ListItem>
                    <asp:ListItem Text="BSC.CS" Value="BSC.CS"></asp:ListItem>
                    </asp:DropDownList></asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblEmail" runat="server" Text="Email:" AssociatedControlID="txtEmail"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtEmail" runat="server" placeholder="Email..." Required="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell>
                    <asp:Label ID="lblContact" runat="server" Text="Contact:" AssociatedControlID="txtContact"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:TextBox ID="txtContact" runat="server" placeholder="+912345..." Required="true"></asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell HorizontalAlign="Center">
                    <asp:Button ID="btnAddStudent" runat="server" Text="Add" OnClick="btnAddStudent_Click"/>
                </asp:TableCell>
                <asp:TableCell HorizontalAlign="Center"> 
                    <asp:Button ID="btnClear" runat="server" Text="Clear" OnClick="btnClear_Click" /> 
                </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                <asp:TableCell ColumnSpan="2">
                    <asp:Label ID="Label_message" runat="server" ></asp:Label>
                </asp:TableCell>
            </asp:TableRow>

        </asp:Table>
        
    </div>

</div>

</asp:Content>
