<%@ Page Title="Edit Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditContactUs.aspx.cs" Inherits="Bakery.Web.App.EditContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Edit Contact Us </h1><ul class="breadcrumb">
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
                                <a href="#">
                                    Edit Contact Us
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
                                <h4 class="panel-title"> Edit Contact Us</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-3">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Location</label>
                                        <input type="text" class="form-control" placeholder="Location" />
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Contact Number </label>
                                        <input type="text" class="form-control" placeholder="Contact Number" />
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Email </label>
                                        <input type="email" class="form-control" placeholder="Email" />
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Map</label>
                                        <textarea class="form-control" placeholder="Map"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <button type="button" class="btn btn-primary btn-fill mrg-r-10">
                                    <i class="fa fa-floppy-o"></i>
                                    Save
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
