<%@ Page Title="Brand List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BrandList.aspx.cs" Inherits="Bakery.Web.App.BrandList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover">
        <div class="breadcrumb-main">
            <div class="container">
                <div class="breadcrumb-container">
                    <h1 class="page-title">Brand </h1>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Home.aspx">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="setting.aspx">Setting
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#">Brand
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
                            <h4 class="panel-title">List Brand</h4>
                        </div>
                        <div class="panel-body">
                            <a href="AddBrand.aspx" class="btn btn-primary">
                                <i class="fa fa-plus"></i>
                                Add
                            </a>
                            <div class="overflow-auto">
                                <table class="table table-bordered text-center mt-3">
                                    <thead class="bg-rosy text-white">
                                        <tr>
                                            <th scope="col">Title</th>
                                            <th scope="col">Image</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>Appel</td>
                                            <td>
                                                <img class="tbl-img2" src="Content/assets/img/brand/01.png" />
                                            </td>
                                            <td>
                                                <a href="AddBrand.aspx" class="btn btn-info btn-fill mrg-r-10">
                                                    <i class="fa fa-pencil"></i>
                                                    Edit
                                                </a>
                                                <a href="javascript:void()" class="btn btn-danger" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>

                                        <tr>
                                            <td>Appel</td>
                                            <td>
                                                <img class="tbl-img2" src="Content/assets/img/brand/02.png" />
                                            </td>
                                            <td>
                                                <a href="AddBrand.aspx" class="btn btn-info btn-fill mrg-r-10">
                                                    <i class="fa fa-pencil"></i>
                                                    Edit
                                                </a>
                                                <a href="javascript:void()" class="btn btn-danger" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Appel</td>
                                            <td>
                                                <img class="tbl-img2" src="Content/assets/img/brand/03.png" />
                                            </td>
                                            <td>
                                                <a href="AddBrand.aspx" class="btn btn-info btn-fill mrg-r-10">
                                                    <i class="fa fa-pencil"></i>
                                                    Edit
                                                </a>
                                                <a href="javascript:void()" class="btn btn-danger" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Appel</td>
                                            <td>
                                                <img class="tbl-img2" src="Content/assets/img/brand/04.png" />
                                            </td>
                                            <td>
                                                <a href="AddBrand.aspx" class="btn btn-info btn-fill mrg-r-10">
                                                    <i class="fa fa-pencil"></i>
                                                    Edit
                                                </a>
                                                <a href="javascript:void()" class="btn btn-danger" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>Appel</td>
                                            <td>
                                                <img class="tbl-img2" src="Content/assets/img/brand/05.png" />
                                            </td>
                                            <td>
                                                <a href="AddBrand.aspx" class="btn btn-info btn-fill mrg-r-10">
                                                    <i class="fa fa-pencil"></i>
                                                    Edit
                                                </a>
                                                <a href="javascript:void()" class="btn btn-danger" onclick="btnDelete(1)">
                                                    <i class="fa fa-trash"></i>
                                                    Delete
                                                </a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
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
