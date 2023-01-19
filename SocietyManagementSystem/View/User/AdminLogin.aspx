<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="SocietyManagementSystem.View.User.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        * {
            box-sizing: border-box;
        }

        .e-housing_image {
            height: 100px;
            width: 750px;
            margin-left: 270px;
            margin-right: 300px;
        }

        .login_form {
            text-align: center;
            margin-left: 400px;
            margin-right: 400px;
            border: solid;
            border-radius: 2px;
            border-color: burlywood;
            margin-bottom: 200px;
        }

        .auto-style1 {
            width: 192px;
        }
    </style>

    <!--for image -->
    <div class="e-housing_image">
        <br />
        <br />
        <img src="../../Asset/Images/e-housing.jpg" />
    </div>
    <br />
    <br />
    <br />

    <!--for login -->
    <div class="login_form">
        <h3 style="background: green; color: white">Admin Login Panel</h3>
        <br />
        <br />
        <label>Username : </label>
        <input type="text" class="auto-style1" id="username" runat="server" />
        <br />
        <br />

        <label>Password : </label>
        <input type="password" class="auto-style1" id="password" runat="server"/><br />
        <br />

        <%--<input type="radio" name="loginAs" value="admin"> Admin
            <input type="radio" name="loginAs" value="user"> User<br /><br />--%>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Text="Login" Style="background: green; color: white" Width="141px" OnClick="Button1_Click" /><br />
        <br />
        <div>
            <label id="ErrMsg" class="text-danger" runat="server"></label>
        </div>
    </div>
    

</asp:Content>
