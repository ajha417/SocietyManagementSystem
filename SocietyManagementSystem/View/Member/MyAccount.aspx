<%@ Page Title="" Language="C#" MasterPageFile="~/View/Member/MemberMasterPage.Master" AutoEventWireup="true" CodeBehind="MyAccount.aspx.cs" Inherits="SocietyManagementSystem.View.Member.MyAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <style>
        .column {
            float: left;
            width: 25%;
        }

        .label {
            background: green;
            color: white;
            font-style: oblique;
            margin-top: 20px;
        }

        .left_column {
            border: solid;
            border-color: forestgreen;
        }

        .left_column_down {
            margin-top: 10px;
            background: green;
            color: white;
            border: solid;
            border-color: forestgreen;
        }

        .society_list {
            border: solid;
            border-radius: 1px;
            border-color: forestgreen;
            height: 400px;
        }

        .column2 {
            float: right;
            width: 75%;
        }

        .welcome_label {
            background: green;
            color: white;
            text-align: center;
            height: 30px;
            font-style: italic;
        }

        .account_detail {
            border:solid;
            border-color:green;
            border-width:2px;
            text-align:center;
            margin-left:30%;
            margin-right:30%;
            margin-top:100px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <div class="row">
        <!--left column-->
        <div class="column" style="text-align: center">
            <div class="left_column">

                <div class="label">
                    <asp:Label ID="Label3" runat="server" Text="Welcome,"></asp:Label>
                    <asp:Label runat="server" Text="username"></asp:Label>
                </div>
                <br />



                <label>PHOTO</label><br />
                <br />
                <br />

            </div>

            <div class="left_column_down">
                <asp:Label ID="Label5" runat="server" Text="SOCIETY LIST"></asp:Label>
            </div>

            <!-- society list-->
            <div class="society_list">
            </div>
        </div>


        <!--right column-->

        <div class="column2">
            <br />
            <div class="welcome_label">
                <label>MY ACCOUNT</label>
            </div>



            <br />


            <div class="account_detail">

                <div style="background:#ff6a00;color:white">
                    <label>My Account Detail</label>
                </div><br />

                <asp:Label ID="Label6" runat="server" Text="First Name:"></asp:Label>

                <br />
                <asp:Label ID="Label7" runat="server" Text="Last Name:"></asp:Label>


                <br />
                <asp:Label ID="Label8" runat="server" Text="Email:"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" Text="Mobile:"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Society Name:"></asp:Label>
                <br />
                <asp:Label ID="Label10" runat="server" Text="Member:"></asp:Label><br />
                <br />



            </div>



        </div>
    </div>




</asp:Content>
