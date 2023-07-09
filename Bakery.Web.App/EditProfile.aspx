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
                    <asp:Label ID="lblError" runat="server" CssClass="text-danger" Text=""></asp:Label>
                </div>

                <div class="form-label-group">
                    <label>Full Name</label>
                    <asp:RequiredFieldValidator ID="RequiredFullName" runat="server" ControlToValidate="txtFullName" CssClass="text-danger" ErrorMessage="Full Name Is Required" ValidationGroup="userGroup"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" ToolTip="Full Name"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2" id="divEmail" runat="server">
                    <label>Email address</label>
                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email Is Required" ValidationGroup="userGroup"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ValidationGroup="userGroup" ErrorMessage="Email Is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ToolTip="Email Address" Enabled="false"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2 mb-3" id="divMobile" runat="server">
                    <label>Mobile</label>
                    <asp:RequiredFieldValidator ID="RequiredMobile" runat="server" ControlToValidate="txtMobile" CssClass="text-danger" ValidationGroup="userGroup" ErrorMessage="Mobile Is Required"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="form-control"  ToolTip="Mobile"></asp:TextBox>
                </div>

                <div class="form-label-group mt-2 mb-3">
                    <label for="txtPassword">Password</label>
                    <%--<asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ControlToValidate="txtPassword" CssClass="text-danger" ValidationGroup="userGroup" ErrorMessage="Password Is Required"></asp:RequiredFieldValidator>--%>
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" ToolTip="Password"></asp:TextBox>
                </div>

                <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" ValidationGroup="userGroup" CssClass="btn btn-lg btn-rosy btn-block">
                    <i class="fa fa-pencil" aria-hidden="true"></i> Save
                </asp:LinkButton>
            </div>

        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
