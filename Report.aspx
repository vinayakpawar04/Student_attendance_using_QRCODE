<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Student_attendance_system.Report" %>
<%@ Register TagPrefix="asp" Namespace="System.Web.UI.WebControls" Assembly="System.Web" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background-color: #f0f0f0;
        }

        .container {
            width: 80%;
            margin: 70px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.3);
            border-radius: 5px;
        }

        h2 {
            font-size: 24px;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group input[type="text"] {
            width: calc(50% - 10px);
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        .form-group input[type="submit"] {
            width: 100px;
            padding: 10px;
            background-color: #62ea90;
            border: none;
            border-radius: 3px;
            color: #000;
            font-weight: bold;
            cursor: pointer;
        }

        .grid-container {
            height: 300px;
            overflow-y: auto;
            margin-top: 20px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 10px;
            border-bottom: 1px solid #ccc;
            text-align: center;
        }

        th {
            background-color: #f0f0f0;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container">
        <h2>Attendance List</h2>
            <div class="form-group">
            <label for="txtId">Id:</label>
            <asp:TextBox ID="txtId" runat="server" placeholder="Enter Student Id"></asp:TextBox>
        </div>
         <div class="form-group">
            <asp:Label ID="lblClassName" runat="server" Text="Class Name:"></asp:Label>
            <asp:TextBox ID="txtClassName" runat="server" CssClass="form-control" placeholder="Enter Class Name"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtFromDate">From Date:</label>
            <asp:TextBox ID="txtFromDate" runat="server" placeholder="MM/DD/YYYY"></asp:TextBox>
        </div>
        <div class="form-group">
            <label for="txtToDate">To Date:</label>
            <asp:TextBox ID="txtToDate" runat="server" placeholder="MM/DD/YYYY"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Button ID="btnFilter" runat="server" Text="Filter" OnClick="btnFilter_Click" /> 
        </div>
        <div class="form-group">
           
            <asp:Label ID="lblErrorMessage" runat="server"></asp:Label>
        </div>
        <div class="grid-container">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Student Id" />
                    <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                    <asp:BoundField DataField="LastName" HeaderText="Last Name" />
                    <asp:BoundField DataField="RollNo" HeaderText="Roll No." />
                    <asp:BoundField DataField="Class" HeaderText="Class" />
                    <asp:BoundField DataField="Datetime" HeaderText="Date/Time" />
                    <asp:BoundField DataField="Status" HeaderText="Status" />
                </Columns>
            </asp:GridView>
        </div>
    </div>
</asp:Content>
