<%@ Page Title="" Language="C#" MasterPageFile="~/AdminDashboard.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Student_attendance_system.home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>My Account</title>
<style>
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

    .child1 {
        max-width: 500px;
    }

        .child1 img {
            flex-grow: 1;
            max-height: 300px;
            min-height: 150px;
            width: auto;
            border: 1px solid black;
            border-radius: 10px;
            padding: 20px;
            margin: 20px;
        }

    .child2 {
        flex-grow: 4;
        min-height: 300px;
        width: auto;
        margin: 10px;
    }

        .child2 h1 {
            margin: 0px;
            font-size: 50px;
            color: white;
            font-weight: 600;
            padding: 20px 0px;
        }

        .child2 td {
            color: white;
            font-size: 25px;
            font-weight: 600;
            padding: 10px;
        }

        .child2 label {
            color: white;
            font-size: 20px;
            font-weight: 600;
        }

    .deletebutton {
        border: none;
        color: white;
        padding: 10px;
        margin: 10px;
        font-size: 20px;
        border-radius: 10px;
        background-color: red;
    }

    h2{
        color:white;
        padding: 20px 0;
        text-align:center;
    }
</style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container1">
    <profile_img class="child1">

        <asp:Image height="300" ImageUrl="~/Images/adminlogo.png" runat="server" />

    </profile_img>
    <div class="child2">

        <h1 id="accountname" runat="server"></h1>
        <table runat="server">
            <tr>
                <td for="accountid">Admin id:&nbsp;</td>
                <td>
                    <label runat="server" id="accountid"></label>
                </td>
            </tr>
            <tr>
                <td for="accountmobile">Mobile No.: </td>
                <td>
                    <label runat="server" id="accountmobile"></label>
                </td>
            </tr>
            <tr>
                <td for="accountaddress">Address: </td>
                <td>
                    <label runat="server" id="accountaddress"></label>
                </td>
            </tr>
        </table>

        </div>
</div>
<hr />
</asp:Content>
