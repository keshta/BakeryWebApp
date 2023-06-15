<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Bakery.Web.App.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title">Login</h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#"> Login </a>
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
                    <h1 class="h3 mb-3 font-weight-normal">User Login</h1>
                </div>

                <div class="form-label-group">
                    <label for="txtUsername">Username</label>
                    <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ControlToValidate="txtUsername" CssClass="text-danger" ErrorMessage="Username Is Required" ValidationGroup="loginGroup"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ToolTip="Username, Email or Mobile"></asp:TextBox>
                </div>

                <div class="form-label-group mt-3">
                    <label for="txtPassword">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="Password Is Required" ValidationGroup="loginGroup"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" ToolTip="Password"></asp:TextBox>
                </div>

                <div class="checkbox mb-3 mt-3">
                    <a href="register.aspx" class="btn btn-link">Register a new membership</a>
                    <label>
                        <asp:CheckBox ID="chkRemember" runat="server" CssClass="chk-1" ToolTip="remember-me"/> Remember Me
                    </label>
                </div>
                <asp:Button ID="btnLogin" runat="server" OnClick="btnLogin_Click" Text="Sign in" ValidationGroup="loginGroup" CssClass="btn btn-lg btn-rosy btn-block"/>
            </div>

        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
