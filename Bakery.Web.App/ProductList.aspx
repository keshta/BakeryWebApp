<%@ Page Title="Product List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductList.aspx.cs" Inherits="Bakery.Web.App.ProductList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Product </h1><ul class="breadcrumb">
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
                                    Product
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
                                <h4 class="panel-title"> List Product</h4>
                            </div>
                            <div class="panel-body">
                                <a href="AddProduct.aspx" class="btn btn-primary">
                                    <i class="fa fa-plus"></i>
                                    Add
                                </a>
                                <div class="overflow-auto">
                                    <table class="table table-bordered text-center mt-3">
                                        <thead class="bg-rosy text-white">
                                            <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">Name</th>
                                                <th scope="col">Brand</th>
                                                <th scope="col">Category</th>
                                                <th scope="col">Price</th>
                                                <th scope="col">Image</th>
                                                <th scope="col"> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <td> 1</td>
                                                <td> Donuts</td>
                                                <td> Appel</td>
                                                <td> Appel</td>
                                                <td> $12,00</td>
                                                <td>
                                                    <img class="tbl-img2" src="Content/assets/img/product/01.jpg" />
                                                </td>
                                                <td>
                                                    <a href="AddProduct.aspx" class="btn btn-info btn-fill mrg-r-10">
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
                                                <td> 2</td>
                                                <td> Donuts</td>
                                                <td> Appel</td>
                                                <td> Appel</td>
                                                <td> $12,00</td>
                                                <td>
                                                    <img class="tbl-img2" src="Content/assets/img/product/02.jpg" />
                                                </td>
                                                <td>
                                                    <a href="AddProduct.aspx" class="btn btn-info btn-fill mrg-r-10">
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
                                                <td> 3</td>
                                                <td> Donuts</td>
                                                <td> Appel</td>
                                                <td> Appel</td>
                                                <td> $12,00</td>
                                                <td>
                                                    <img class="tbl-img2" src="Content/assets/img/product/03.jpg" />
                                                </td>
                                                <td>
                                                    <a href="AddProduct.aspx" class="btn btn-info btn-fill mrg-r-10">
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
                                                <td> 4</td>
                                                <td> Donuts</td>
                                                <td> Appel</td>
                                                <td> Appel</td>
                                                <td> $12,00</td>
                                                <td>
                                                    <img class="tbl-img2" src="Content/assets/img/product/04.jpg" />
                                                </td>
                                                <td>
                                                    <a href="AddProduct.aspx" class="btn btn-info btn-fill mrg-r-10">
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
                                                <td> 5</td>
                                                <td> Donuts</td>
                                                <td> Appel</td>
                                                <td> Appel</td>
                                                <td> $12,00</td>
                                                <td>
                                                    <img class="tbl-img2" src="Content/assets/img/product/05.jpg" />
                                                </td>
                                                <td>
                                                    <a href="AddProduct.aspx" class="btn btn-info btn-fill mrg-r-10">
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
