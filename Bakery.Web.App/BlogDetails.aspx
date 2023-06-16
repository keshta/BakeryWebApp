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
                            <img src="" id="imgBlog" runat="server" class="prod-img" />
                        </div>
                    </div>
                </div>

                <div class="card blog-desc">
                    <div class="card-body">
                        <p class="btn btn-rosy">
                            <i class="fa fa-calendar" aria-hidden="true"></i>  
                            <span id="lblDate" runat="server"></span>
                        </p>
                        <h4 id="lblTitle" runat="server"> </h4>
                        <p class="card-text" id="lblDescription" runat="server"> </p>
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

