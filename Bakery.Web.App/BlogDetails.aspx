<%@ Page Title="Blog Details" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BlogDetails.aspx.cs" Inherits="Bakery.Web.App.BlogDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title">Blog Details</h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>

                            <li class="breadcrumb-item">
                                <a href="Blog.aspx">
                                    Blog
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Blog Details
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="album">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="card blog-img shadow-sm">
                            <img src="Content/assets/img/blog/02.jpg" class="prod-img" />
                        </div>
                    </div>
                </div>

                <div class="card blog-desc">
                    <div class="card-body">
                        <p class="btn btn-rosy">
                            <i class="fa fa-calendar" aria-hidden="true"></i>  22 November, 2022
                        </p>
                        <h4>Where Can I Get Some? </h4>
                        <p class="card-text">
                            It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.
                            The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here,
                            content here', making it look like readable English

                            Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text,
                            and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have
                            evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).
                        </p>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
   <script>
       activeNavbarByPageName("Blog")
   </script>
</asp:Content>

