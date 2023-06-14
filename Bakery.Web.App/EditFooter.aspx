<%@ Page Title="Edit Footer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditFooter.aspx.cs" Inherits="Bakery.Web.App.EditFooter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Edit Footer </h1><ul class="breadcrumb">
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
                                    Edit Footer
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
                                <h4 class="panel-title"> Edit Footer</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-3">
                                <div class="row">
                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Subscribe</label>
                                        <textarea class="form-control" placeholder="Subscribe"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Subscribe</label>
                                        <textarea class="form-control" placeholder="Subscribe"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Summary</label>
                                        <textarea class="form-control" placeholder="Summary"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Summary</label>
                                        <textarea class="form-control" placeholder="Summary"></textarea>
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
