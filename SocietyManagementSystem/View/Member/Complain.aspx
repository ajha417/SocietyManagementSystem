<%@ Page Title="" Language="C#" MasterPageFile="~/View/Member/MemberMasterPage.Master" AutoEventWireup="true" CodeBehind="Complain.aspx.cs" Inherits="SocietyManagementSystem.View.Member.Complain" %>

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

        .complain_detail {
            border: solid;
            border-color: green;
            border-width: 2px;
            text-align: center;
            margin-left: 30%;
            margin-right: 30%;
            margin-top: 100px;
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
                <label>COMPLAIN</label>
            </div>



            <br />


            <div class="complain_detail">
                <div class="make_complain" style="background:#ff6a00;color:white">
                    <label>Make New Complain</label>
                </div>
                <br />
                <br />

                <label>Subject:</label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br /><br />
                <label>Complain:</label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br /><br />

                <asp:Button ID="Button1" runat="server" Text="SUBMIT" style="background:green;color:white" /><br /><br />


            </div>



        </div>
    </div>


</asp:Content>
