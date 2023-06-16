<%@ Page Title="Edit About Us" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditAboutUs.aspx.cs" Inherits="Bakery.Web.App.EditAboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Edit About Us </h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="index.html">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="setting.aspx">
                                    Setting
                                </a>
                            </li>
                            <li class="#">
                                <a href="brand.html">
                                    Edit About Us
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
                                <h4 class="panel-title"> Edit About Us</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-5">
                                <div class="row">
                                    <div class="form-group col-12">
                                        <label>Description</label>
                                        <asp:RequiredFieldValidator ID="RequiredSummary" runat="server" ControlToValidate="txtDescription" CssClass="text-danger" 
                                                                    ErrorMessage="Description Is Required" ValidationGroup="descriptionGroup">
                                        </asp:RequiredFieldValidator>
                                        <textarea class="form-control" id="txtDescription" runat="server"></textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                                <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" ValidationGroup="descriptionGroup" CssClass="btn btn-primary btn-fill mrg-r-10">
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
