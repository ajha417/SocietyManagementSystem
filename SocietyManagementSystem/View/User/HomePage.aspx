<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="SocietyManagementSystem.View.User.HomePage" %>

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
    </style>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

   


    <div class="row">
        <!--left column-->
        <div class="column" style="text-align: center">
            <div class="left_column">

                <div class="label">
                    <asp:Label ID="Label3" runat="server" Text="Member Login Page"></asp:Label>
                </div>
                <br />


                <asp:Label ID="Label1" runat="server" Text="Username :"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <br />

                <asp:Label ID="Label2" runat="server" Text="Password :"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
                <br />


                <asp:Button ID="Button1" runat="server" Text="LOGIN" Style="background: green; color: white" /><br />
                <asp:Label ID="Label4" runat="server" Text="Forget Password?" Style="color: forestgreen"></asp:Label>
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
                <label>Welcome to E-Housing Helping Society</label>
            </div>
            <br />


            <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                </ol>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img class="d-block w-100" src="../../Asset/Images/Jaypee-greens.jpg" alt="First slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../../Asset/Images/Rise-Resorts-Residence.jpg" alt="Second slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../../Asset/Images/executive-suites--v13704794.jpg" alt="Third slide">
                    </div>
                    <div class="carousel-item">
                        <img class="d-block w-100" src="../../Asset/Images/e-housing.jpg" alt="Third slide">
                    </div>
                    
                </div>
                <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            
   

        </div>
    </div>

</asp:Content>
