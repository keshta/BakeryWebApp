<%@ Page Title="Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="Bakery.Web.App.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Profile</h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">  Profile </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="starter-template profile-form">
            <div class="form-signin">
                <div class="row">
                    <div class="col-lg-4 col-md-4">
                        <div class="text-center">
                            <p>
                                <img src="Content/assets/img/default-user.png" class="profile-img" />
                            </p>
                            <a href="EditProfile.aspx" class="btn btn-info">
                                <i class="fa fa-pencil" aria-hidden="true"></i>
                                Edit
                            </a>
                        </div>
                    </div>

                    <div class="col-lg-8 col-md-8">
                        <div class="form-label-group">
                            <label>Full Name:</label>
                            <span>Mohamed Alaa</span>
                        </div>

                        <div class="form-label-group">
                            <label>Email:</label>
                            <span>email@example.com</span>
                        </div>

                        <div class="form-label-group">
                            <label>Mobile:</label>
                            <span>+1 (123) 8425733</span>
                        </div>
                    </div>
                </div>


            </div>

        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
