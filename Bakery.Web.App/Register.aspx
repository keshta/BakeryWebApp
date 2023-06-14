<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Bakery.Web.App.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

      <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title">Register</h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#"> Register </a>
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
                    <h1 class="h3 mb-3 font-weight-normal">User Register</h1>
                </div>

                <div class="form-label-group mt-2">
                    <label for="fullName"> Full Name</label>
                    <input type="text" id="fullName" class="form-control" placeholder="Full Name" required="" autofocus="">
                </div>

                <div class="form-label-group mt-2">
                    <label for="inputEmail">Email address</label>
                    <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required="" autofocus="">
                </div>

                <div class="form-label-group mt-2">
                    <label for="mobileNumber"> Mobile</label>
                    <input type="text" id="mobileNumber" class="form-control" placeholder="Mobile" required="" autofocus="">
                </div>

                <div class="form-label-group mt-2">
                    <label for="inputPassword">Password</label>
                    <input type="password" id="inputPassword" class="form-control" placeholder="Password" required="">
                </div>
                <br />
                <button class="btn btn-lg btn-rosy btn-block" type="submit">Sign in</button>
                <a href="login.aspx" class="btn btn-link">I already have a membership</a>
            </div>

        </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
