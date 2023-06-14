<%@ Page Title="Edit Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditInformation.aspx.cs" Inherits="Bakery.Web.App.EditInformation" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Edit Information </h1><ul class="breadcrumb">
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
                                    Edit Information
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
                                <h4 class="panel-title"> Edit Information</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-3">
                                <div class="row">

                                    <div class="form-group col-lg-3 col-md-3">
                                        <label>Our Experience</label>
                                        <input type="text" class="form-control" placeholder="Our Experience" />
                                    </div>

                                    <div class="form-group col-lg-3 col-md-3">
                                        <label>Cake Specialist</label>
                                        <input type="text" class="form-control" placeholder="Cake Specialist" />
                                    </div>

                                    <div class="form-group col-lg-3 col-md-3">
                                        <label>Complete Project</label>
                                        <input type="text" class="form-control" placeholder="Complete Project" />
                                    </div>

                                    <div class="form-group col-lg-3 col-md-3">
                                        <label>Happy Clients</label>
                                        <input type="text" class="form-control" placeholder="Happy Clients" />
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Title</label>
                                        <input type="text" class="form-control" placeholder="Title" />
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Title</label>
                                        <input type="text" class="form-control" placeholder="Title" />
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Summary</label>
                                        <textarea class="form-control" placeholder="Summary"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Summary</label>
                                        <textarea class="form-control" placeholder="Summary"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Healthy Description</label>
                                        <textarea class="form-control" placeholder="Healthy Description"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Healthy Description</label>
                                        <textarea class="form-control" placeholder="Healthy Description"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Award Winning Description</label>
                                        <textarea class="form-control" placeholder="Award Winning Description"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Award Winning Description</label>
                                        <textarea class="form-control" placeholder="Award Winning Description"></textarea>
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
