<%@ Page Title="Edit Contact Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditContactUs.aspx.cs" Inherits="Bakery.Web.App.EditContactUs1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover">
        <div class="breadcrumb-main">
            <div class="container">
                <div class="breadcrumb-container">
                    <h1 class="page-title">Edit Contact Us </h1>
                    <ul class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="Home.aspx">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="setting.aspx">Setting
                                </a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#">Edit Contact Us
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
                            <h4 class="panel-title">Edit Contact Us</h4>
                            <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            <asp:Label ID="lblError" runat="server" CssClass="text-danger" Text=""></asp:Label>
                        </div>
                        <div class="panel-body mh-panel pt-3">
                            <div class="row">
                                <div class="form-group col-lg-6 col-md-6">
                                    <label>Location</label>
                                    <asp:RequiredFieldValidator ID="RequiredLocation" runat="server" ControlToValidate="txtLocation" CssClass="text-danger" ErrorMessage="Location Is Required" ValidationGroup="contactGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtLocation" runat="server" CssClass="form-control" ToolTip="Location"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-6 col-md-6">
                                    <label>Contact Number </label>
                                    <asp:RequiredFieldValidator ID="RequiredContactNo" runat="server" ControlToValidate="txtContactNo" CssClass="text-danger" ErrorMessage="Contact Number Is Required" ValidationGroup="contactGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control" ToolTip="Contact Number"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-6 col-md-6">
                                    <label>Email </label>
                                    <asp:RequiredFieldValidator ID="RequiredEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ErrorMessage="Email Is Required" ValidationGroup="contactGroup"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularEmail" runat="server" ControlToValidate="txtEmail" CssClass="text-danger" ValidationGroup="contactGroup" ErrorMessage="Email Is Invalid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                    <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control" ToolTip="Email Address"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-6 col-md-6">
                                    <label>Phone </label>
                                    <asp:RequiredFieldValidator ID="RequiredPhone" runat="server" ControlToValidate="txtPhone" CssClass="text-danger" ErrorMessage="Phone Number Is Required" ValidationGroup="contactGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtPhone" runat="server" CssClass="form-control" ToolTip="Phone Number"></asp:TextBox>
                                </div>

                                <%--<div class="form-group col-12">
                                    <label>Map</label>
                                    <asp:RequiredFieldValidator ID="RequiredMap" runat="server" ControlToValidate="txtMap" CssClass="text-danger" ErrorMessage="Map Is Required" ValidationGroup="contactGroup"></asp:RequiredFieldValidator>
                                    <textarea class="form-control" id="txtMap" name="txtMap" runat="server" placeholder="Map"></textarea>
                                </div>--%>
                            </div>
                        </div>
                        <div class="panel-footer">
                            <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" CssClass="btn btn-primary btn-fill mrg-r-10" ValidationGroup="contactGroup">
                                    <i class="fa fa-floppy-o"></i> Save
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
</asp:Content>
