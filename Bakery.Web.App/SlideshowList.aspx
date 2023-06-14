<%@ Page Title="Slideshow List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlideshowList.aspx.cs" Inherits="Bakery.Web.App.SlideshowList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Slideshow </h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
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
                                    Slideshow
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
                                <h4 class="panel-title"> List Slideshow</h4>
                            </div>
                            <div class="panel-body">
                                <a href="AddSlideshow.aspx" class="btn btn-primary">
                                    <i class="fa fa-plus"></i>
                                    Add
                                </a>
                                <table class="table table-bordered text-center mt-3">
                                    <thead class="bg-rosy text-white">
                                        <tr>
                                            <th scope="col">Image</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <img class="tbl-img" src="Content/assets/img/cover/01.jpg" />
                                            </td>
                                            <td>
                                                <!--<a href="#" class="btn btn-info btn-fill mrg-r-10">
                                                    <i class="fa fa-pencil"></i>
                                                    Edit
                                                </a>-->
                                                <a href="javascript:void()" class="btn btn-danger btn-fill" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>
                                                <img class="tbl-img" src="Content/assets/img/cover/02.jpg" />
                                            </td>
                                            <td>
                                                <a href="javascript:void()" class="btn btn-danger btn-fill" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img class="tbl-img" src="Content/assets/img/cover/03.jpg" />
                                            </td>
                                            <td>
                                                <a href="javascript:void()" class="btn btn-danger btn-fill" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img class="tbl-img" src="Content/assets/img/cover/04.jpg" />
                                            </td>
                                            <td>
                                                <a href="javascript:void()" class="btn btn-danger btn-fill" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <img class="tbl-img" src="Content/assets/img/cover/05.jpg" />
                                            </td>
                                            <td>
                                                <a href="javascript:void()" class="btn btn-danger btn-fill" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>

                            </div>
                            <!--<div class="panel-footer">Panel Footer</div>-->
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
