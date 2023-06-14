<%@ Page Title="Setting" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Setting.aspx.cs" Inherits="Bakery.Web.App.Setting" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="Content/assets/box.css" rel="stylesheet">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Setting </h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Setting
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="setting">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="ProductList.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color:rgba(187, 120, 36, 0.1) ">
                                    <center><i class="fa fa-cubes" style="color:#BB7824"></i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Product</h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="EditAboutUs.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color: rgba(22, 160, 133, 0.1)">
                                    <center><i class="fa fa-info" style="color:#16A085"></i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> About Us </h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="BlogList.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color:  rgba(213, 15, 37, 0.1)">
                                    <center><i class="fa fa-rss" style="color:#d50f25"> </i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Blog </h4>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="BrandList.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color:  rgba(51, 105, 232, 0.1)">
                                    <center><i class="fa fa-file-image-o" style="color:#3369e8"> </i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Brand </h4>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="EditInformation.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color:  rgba(250, 188, 9, 0.1)">
                                    <center><i class="fa fa-info-circle" style="color:#fabc09"> </i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Information </h4>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="SlideshowList.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color: rgba(121, 90, 71, 0.1)">
                                    <center><i class="fa fa-picture-o" style="color:#795a47"> </i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Slideshow </h4>
                                </div>

                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="EditContactUs.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color: rgba(130, 93, 9, 0.1)">
                                    <center><i class="fa fa-envelope" style="color:#825d09"></i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Contact Us </h4>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-4 pb-3">
                        <div class="wrimagecard wrimagecard-topimage">
                            <a href="EditFooter.aspx">
                                <div class="wrimagecard-topimage_header" style="background-color: rgba(22, 160, 133, 0.1)">
                                    <center><i class="fa fa-desktop" style="color:#16A085"></i></center>
                                </div>
                                <div class="wrimagecard-topimage_title">
                                    <h4> Footer </h4>
                                </div>
                            </a>
                        </div>
                    </div>

                </div>
            </div>

        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
