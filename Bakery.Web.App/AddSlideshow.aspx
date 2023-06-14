<%@ Page Title="Add Slideshow" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddSlideshow.aspx.cs" Inherits="Bakery.Web.App.AddSlideshow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Add </h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="setting.aspx">
                                    Setting
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="SlideshowList.aspx">
                                    Slideshow
                                </a>
                            </li>

                            <li class="breadcrumb-item">
                                <a href="#">
                                    Add Slideshow
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="starter-template">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title"> Add Slideshow</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-5">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <label for="formFileLg" class="form-label"> Image</label>
                                        <input class="form-control form-control-md" onchange="readURL(this);" id="formFileLg" type="file">
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <img id="blah" class="img-preview" src="Content/assets/img/default-cover.jpg" alt="your image" />
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <button type="button" class="btn btn-primary btn-fill mrg-r-10">
                                    <i class="fa fa-floppy-o"></i>
                                    Add
                                </button>
                                <a href="SlideshowList.aspx" class="btn btn-dark ml-2 mr-2">
                                    <i class="fa fa-list"></i>
                                    List
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
