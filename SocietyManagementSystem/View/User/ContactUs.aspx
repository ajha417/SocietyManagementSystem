<%@ Page Title="" Language="C#" MasterPageFile="~/View/User/UserMasterPage.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="SocietyManagementSystem.View.User.ContactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../Asset/Libs/Bootstrap/css/bootstrap.min.css" />
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!--Section: Contact v.2-->
    <section class="mb-4">

        <!--Section heading-->
        <h2 class="h1-responsive font-weight-bold text-center my-4">Contact us</h2>
        <!--Section description-->
        <p class="text-center w-responsive mx-auto mb-5">
            Do you have any questions? Please do not hesitate to contact us directly. Our team will come back to you within
        a matter of hours to help you.
        </p>

        <div class="row" style="margin-left:50px;margin-right:50px">

            <!--Grid column-->
            <div class="col-md-9 mb-md-0 mb-5">
                

                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <label for="name" class="">Your name</label>
                                <input type="text" id="name" name="name" class="form-control">
                            </div>
                        </div>
                        <br />
                        <!--Grid column-->

                        <!--Grid column-->
                        <div class="col-md-6">
                            <div class="md-form mb-0">
                                <label for="email" class="">Your email</label>
                                <input type="text" id="email" name="email" class="form-control">
                            </div>
                        </div>
                        <!--Grid column-->

                    </div>
                    <!--Grid row-->

                    <!--Grid row-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="md-form mb-0">
                                <label for="subject" class="">Subject</label>
                                <input type="text" id="subject" name="subject" class="form-control">
                            </div>
                        </div>
                    </div>
                    <!--Grid row-->

                    <!--Grid row-->
                    <div class="row">

                        <!--Grid column-->
                        <div class="col-md-12">

                            <div class="md-form">
                                <label for="message">Your message</label>
                                <textarea type="text" id="message" name="message" rows="2" class="form-control md-textarea"></textarea>
                            </div>

                        </div>
                    </div>
                    <!--Grid row-->

                

                <div class="text-center text-md-left" style="margin-top:10px">
                    <a class="btn btn-success col-md-6" onclick="document.getElementById('contact-form').submit();">Send</a>
                </div>
                <div class="status"></div>
            </div>
            <!--Grid column-->

            <!--Grid column-->
            <div class="col-md-3 text-center">
                <ul class="list-unstyled mb-0">
                    <li><i class="fas fa-map-marker-alt fa-2x"></i>
                        <p>Rajkot, India</p>
                    </li>

                    <li><i class="fas fa-phone mt-4 fa-2x"></i>
                        <p>+91-7863082499</p>
                    </li>

                    <li><i class="fas fa-envelope mt-4 fa-2x"></i>
                        <p>ajha417@rku.ac.in</p>
                    </li>
                </ul>
            </div>
            <!--Grid column-->

        </div>

    </section>
    <!--Section: Contact v.2-->

</asp:Content>
