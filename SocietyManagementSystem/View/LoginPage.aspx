<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="SocietyManagementSystem.View.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

     <style>
        *{
            box-sizing:border-box;
        }
       
        .e-housing_image{
            height:100px;
            width:750px;
            margin-left:270px;
            margin-right:300px;
        }

        .login_form{
            text-align:center;
            margin-left:400px;
            margin-right:400px;
            border:solid;
            border-radius:2px;
            border-color:burlywood;

        }
        .auto-style1 {
            width: 192px;
        }
        </style>

</head>
<body>
    <form id="form1" runat="server">


        
        <!--for image -->
        <div class="e-housing_image"><br /><br />
            <img src="../Asset/Images/e-housing.jpg" />
        </div><br /><br /><br />

        <!--for login -->
        <div class="login_form">
            <h3 style="background:green;color:white">Admin Login Panel</h3><br /><br />
            <label>Username : </label>
            <input type="text" class="auto-style1" id="username" runat="server"/> <br /><br />

            <label>Password : </label>
            <input type="password" class="auto-style1" /><br /> <br />

            <%--<input type="radio" name="loginAs" value="admin"> Admin
            <input type="radio" name="loginAs" value="user"> User<br /><br />--%>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" style="background:green; color:white" Width="141px"  /><br /><br />
        </div>

    </form>
</body>
</html>
