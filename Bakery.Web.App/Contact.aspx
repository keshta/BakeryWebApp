<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Bakery.Web.App.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
   <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title">Contact Us</h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Contact Us
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="starter-template info-head">
            <h1> Contact Information </h1>
            <div class="row contact_info_inner justify-content-center">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 wow animated fadeIn" data-wow-delay="0.2s">
                    <div class="contact_info_item">
                        <i class="fa fa-map-marker" aria-hidden="true"></i>
                        <h4>Location</h4>
                        <div class="address" id="lblAddress" runat="server">Cairo, Egypt</div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 wow animated fadeIn" data-wow-delay="0.4s">
                    <div class="contact_info_item">
                        <i class="fa fa-phone" aria-hidden="true"></i>
                        <h4>Contact Number</h4>
                        <div>
                            <h5><a href="" id="lnkContactNo" runat="server"> </a></h5>
                        </div>
                    </div>
                </div>

                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-6 wow animated fadeIn" data-wow-delay="0.6s">
                    <div class="contact_info_item">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                        <h4> Mail Address</h4>
                        <div>
                            <h5><a href="" id="lnkEmail" runat="server"> </a></h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <section class="map" id="googleMap">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d55251.37709964616!2d31.223444832512136!3d30.05948381032293!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583fa60b21beeb%3A0x79dfb296e8423bba!2sCairo%2C%20Cairo%20Governorate!5e0!3m2!1sen!2seg!4v1680616336166!5m2!1sen!2seg" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </section>

        <section class="main_contact_area mt-5">
            <div class="container">
                <div class="text-center" data-wow-delay="0">
                    <h2>Contact Us</h2>
                </div>
                <div class="main_contact_inner mt-3">
                    <div class="elementor-shortcode kardecore-cf7-0">
                        <div role="form" class="wpcf7" id="wpcf7-f126-p16-o1" lang="en-US" dir="ltr">
                            <div class="screen-reader-response" role="alert" aria-live="polite"></div>
                            <form action="/motodeal/budget/contact/#wpcf7-f126-p16-o1" method="post" class="wpcf7-form init" novalidate="novalidate">
                                <div class="row contact_form">
                                    <div class="form-group col-md-4">
                                        <span class="text-danger" id="lblErrorName" style="display:none;"> Please Enter Name </span>
                                        <span class="wpcf7-form-control-wrap name">
                                            <input type="text" size="40" class="wpcf7-form-control wpcf7-text form-control" id="txtName" aria-invalid="false" placeholder="Name">
                                        </span>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <span class="text-danger" id="lblErrorMobile" style="display:none;"> Please Enter Mobile </span>
                                        <span class="wpcf7-form-control-wrap">
                                            <input type="text" id="txtMobile" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required form-control" aria-required="true" aria-invalid="false" placeholder="Mobile">
                                        </span>
                                    </div>
                                    <div class="form-group col-md-4">
                                        <span class="text-danger" id="lblErrorEmail" style="display:none;"> Please Enter Email </span>
                                        <span class="text-danger" id="lblErrorEmailValid" style="display:none;"> This Email Is Not  Valid</span>
                                        <span class="wpcf7-form-control-wrap email">
                                            <input type="email" id="txtEmail" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email form-control" aria-required="true" aria-invalid="false" placeholder="Email">
                                        </span>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <span class="text-danger" id="lblErrorMessage" style="display:none;"> Please Enter Message </span>
                                        <span class="wpcf7-form-control-wrap message">
                                            <textarea id="txtMessage" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea wpcf7-validates-as-required form-control" aria-required="true" aria-invalid="false" placeholder="Message"></textarea>
                                        </span>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <button type="button" class="btn btn-rosy btn-lg form-control pt-1" onclick="btnSendMessage()">
                                            Send Now
                                            <span class="ajax-loader"></span>
                                        </button>
                                    </div>
                                    <div class="wpcf7-response-output" role="alert" aria-hidden="true"></div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>

</asp:Content>
