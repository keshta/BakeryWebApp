<%@ Page Title="Product Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ProductDetails.aspx.cs" Inherits="Bakery.Web.App.ProductDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover">
        <div class="breadcrumb-main">
            <div class="container">
                <div class="breadcrumb-container">
                    <h1 class="page-title">Product Details</h1>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Home.aspx">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>

                        <li class="breadcrumb-item">
                            <a href="Product.aspx">Product
                                </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="">Product Details
                                </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>


    <div class="album py-5">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="card shadow-sm">
                        <img src="Content/assets/img/product/02.jpg" id="imgProduct" runat="server" class="prod-img" />
                    </div>
                </div>

                <div class="col-md-6 product-right">
                    <h1 id="lblName" runat="server">Donuts</h1>
                    <hr>
                    <ul class="list-unstyled manufacturer-listpro">
                        <li><span class="disc">Brand:</span> <span class="disc1" id="lblBrand" runat="server"> </span></li>
                        <li><span class="disc">Product Code:</span> <span class="disc1" id="lblProductCode" runat="server"> </span></li>
                        <li><span class="disc">Category:</span> <span class="disc1" id="lblCategory" runat="server"> </span></li>
                    </ul>
                    <hr>
                    <ul class="list-unstyled">
                        <li>
                            <h2><span class="price-new pro_price" id="lblPrice" runat="server"> </span></h2>
                        </li>
                        <li>Discount: &nbsp; <span id="lblDiscount" runat="server"></span></li>

                    </ul>

                    <div>
                        <hr />
                        <h1>Summary</h1>
                        <p id="lblSummary" runat="server"> </p>
                    </div>
                </div>

            </div>
            <hr />
            <div class="card prod-desc">
                <div class="card-body">
                    <p class="btn btn-rosy">Description</p>
                    <p class="card-text" id="lblDescription" runat="server"> </p>
                </div>
            </div>

            <div class="card prod-desc">
                <div class="card-body">
                    <p class="btn btn-rosy">Information</p>
                    <p class="card-text" id="lblInformation" runat="server"> </p>
                </div>
            </div>

        </div>
    </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
   <script>
       activeNavbarByPageName("Product")
   </script>
</asp:Content>
