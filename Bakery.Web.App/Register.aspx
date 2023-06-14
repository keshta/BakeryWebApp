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
                    <asp:Label ID="lblError" runat="server" CssClass="text-danger" Text=""></asp:Label>
                    <label for="txtFullName"> Username </label>
                    <asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ControlToValidate="txtUsername" CssClass="text-danger" ErrorMessage="Username Is Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" ToolTip="Username"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2">
                    <label for="txtFullName"> Full Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFullName" runat="server" ControlToValidate="txtFullName" CssClass="text-danger" ErrorMessage="Full Name Is Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" ToolTip="Full Name"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2">
                    <label for="txtEmail">Email address</label>
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email Is Required"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email Is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ToolTip="Email Address"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2">
                    <label for="txtMobile"> Mobile</label>
                    <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" CssClass="text-danger" ErrorMessage="Mobile Is Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control" ToolTip="Mobile"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2">
                    <label for="txtPassword">Password</label>
                    <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" ToolTip="Password"></asp:TextBox>
                </div>
                <br />
                <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" CssClass="btn btn-lg btn-rosy btn-block" Text="Sign in" />

                <a href="login.aspx" class="btn btn-link">I already have a membership</a>
            </div>

        </div>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
