<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Bakery.Web.App.AddProduct" %>
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
                                <a href="ProductList.aspx">
                                    Product
                                </a>
                            </li>

                            <li class="breadcrumb-item">
                                <a href="#">
                                    Add Product
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
                                <h4 class="panel-title"> Add Product</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-3">
                                <div class="row">

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Name</label>
                                        <input type="text" class="form-control" aria-describedby="emailHelp">
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Name</label>
                                        <input type="text" class="form-control" aria-describedby="emailHelp">
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Brand</label>
                                        <select class="form-control">
                                            <option value="0">Select Option</option>
                                            <option value="1">Apple 1</option>
                                            <option value="1">Apple 2</option>
                                            <option value="1">Apple 3</option>
                                        </select>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Category</label>
                                        <select class="form-control">
                                            <option value="0">Select Option</option>
                                            <option value="1">Apple 1</option>
                                            <option value="1">Apple 2</option>
                                            <option value="1">Apple 3</option>
                                        </select>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Price</label>
                                        <input type="text" class="form-control" placeholder="Price">
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Discount</label>
                                        <input type="text" class="form-control" placeholder="Discount">
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <label for="formFileLg" class="form-label"> Image</label>
                                        <input class="form-control form-control-md" onchange="readURL(this);" id="formFileLg" type="file">
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <img id="blah" class="img-preview" src="Content/assets/img/default-cover.jpg" alt="your image" />
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Summary</label>
                                        <textarea class="form-control" placeholder="Summary"></textarea>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Summary</label>
                                        <textarea class="form-control" placeholder="Summary"></textarea>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Information</label>
                                        <textarea class="form-control" placeholder="Information"></textarea>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Information</label>
                                        <textarea class="form-control" placeholder="Information"></textarea>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Description</label>
                                        <textarea class="form-control" placeholder="Description"></textarea>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Description</label>
                                        <textarea class="form-control" placeholder="Description"></textarea>
                                    </div>

                                </div>
                            </div>
                            <div class="panel-footer">
                                <button type="button" class="btn btn-primary btn-fill mrg-r-10">
                                    <i class="fa fa-floppy-o"></i>
                                    Add
                                </button>
                                <a href="ProductList.aspx" class="btn btn-dark ml-2 mr-2">
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
