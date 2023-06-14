<%@ Page Title="Edit Profile" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="Bakery.Web.App.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title">Edit Profile</h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="profile.aspx"> Profile </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#"> Edit Profile </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="starter-template lr-content user-form">
            <div class="form-signin">
                <div class="text-center mb-2">
                    <p class="color-rosy"> <i class="fa fa-user-circle-o" aria-hidden="true" style="font-size: 80px;"></i> </p>
                    <h1 class="h3 mb-3 font-weight-normal"> Edit Profile </h1>
                </div>

                <div class="form-label-group">
                    <label>Full Name</label>
                    <input type="text" class="form-control" placeholder="Full Name">
                </div>

                <div class="form-label-group mt-2">
                    <label>Email address</label>
                    <input type="email" class="form-control" placeholder="Email address" disabled>
                </div>

                <div class="form-label-group mt-2 mb-3">
                    <label>Mobile</label>
                    <input type="text" class="form-control" placeholder="Mobile">
                </div>

                <a href="edit-profile.html" class="btn btn-lg btn-rosy btn-block">
                    <i class="fa fa-pencil" aria-hidden="true"></i>
                    Edit
                </a>
            </div>

        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
