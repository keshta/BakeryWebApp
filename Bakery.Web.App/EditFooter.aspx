<%@ Page Title="Edit Footer" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditFooter.aspx.cs" Inherits="Bakery.Web.App.EditFooter" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Edit Footer </h1><ul class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="Home.aspx">
                                    <i class="fa fa-home"></i>
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="setting.aspx">
                                    Setting
                                </a>
                            </li>
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Edit Footer
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
                                <h4 class="panel-title"> Edit Footer</h4>
                                <hr />
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-3">
                                <div class="row">
                                    <div class="form-group col-lg-12 col-md-12">
                                        <label>Subscribe</label>
                                        <asp:RequiredFieldValidator ID="RequiredSubscribe" runat="server" ControlToValidate="txtSubscribe" CssClass="text-danger"
                                                                    ErrorMessage="Subscribe Is Required" ValidationGroup="footerGroup">
                                        </asp:RequiredFieldValidator>
                                        <textarea class="form-control" id="txtSubscribe" runat="server" placeholder="Subscribe"></textarea>
                                    </div>

                                    <div class="form-group col-lg-12 col-md-12">
                                        <label>Summary</label>
                                        <asp:RequiredFieldValidator ID="RequiredSummary" runat="server" ControlToValidate="txtSummary" CssClass="text-danger" 
                                                                    ErrorMessage="Summary Is Required" ValidationGroup="footerGroup">
                                        </asp:RequiredFieldValidator>
                                        <textarea class="form-control" id="txtSummary" runat="server" placeholder="Summary"></textarea>
                                    </div>

                                </div>
                            </div>
                            <div class="panel-footer">
                                <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" CssClass="btn btn-primary btn-fill mrg-r-10" ValidationGroup="footerGroup">
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
