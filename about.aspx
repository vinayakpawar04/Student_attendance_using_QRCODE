<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Student_attendance_system.about" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="UTF-8" />
    <title>About Us</title>
    <style>
        body{
    margin: 0px;
    padding: 0px;
}

.about{
    padding: 0;
    font-size: xx-large;
    text-align: center;
}

.AboutUs{
    height: auto;
    object-fit: cover;
    width: 100%;
}

.AboutUs img{
    height: auto;
    width:100% ;
}
.para1 {
    margin-left: 50px;
    margin-top:100px;
    height: auto;
    width: auto;
    display: flex;
    justify-content: center;
    align-items: center;
    font-size: 30px;
    font-style: italic;
    /* background-color: #d1cecc; */
    border-radius: 100px  100px;
}

.para1 div{
    display: flex;
    justify-content: start;    
    text-align: start;
    margin: 10px;
}

.hl{
    margin-top: 1px;
    margin-left: 50px;
    height: 20px;
    width: 600px;
    background-color: #0000002a;
    border-radius: 0px 0px 150px 0px;
}

h3{
    text-align: end;
}


.para1 p, .para2 p{
    height: 100px;
    width: 400px;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="AboutUs">
                <asp:Image ID="AboutUsImage" runat="server" ImageUrl="~/Images/AboutUs.jpg" AlternateText="image for about section" />
            </div>
        </section>
        <section class="about">
            <h1>About Us</h1>
            <div class="para1">
                <p>
                    <h3>Who we are:</h3>
                    <div>We are a group of students who really care about making student attendance easier and
                        more secure. We have worked hard to create a modern solution that simplifies keeping track of who is in
                        class</div>
                </p>
                <div>
                    <asp:Image ID="WhoWeAreImage" runat="server" ImageUrl="~/Images/groupofStudent.png" AlternateText="who we are" />
                </div>
            </div>
           
        </section>
    </form>
</body>
</html>
