<%@ Page Title="Edit Information" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditInformation.aspx.cs" Inherits="Bakery.Web.App.EditInformation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="cover">
        <div class="breadcrumb-main">
            <div class="container">
                <div class="breadcrumb-container">
                    <h1 class="page-title">Edit Information </h1>
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
                            <a href="#">Edit Information
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
                            <h4 class="panel-title">Edit Information</h4>
                            <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                        </div>
                        <div class="panel-body mh-panel pt-3">
                            <div class="row">

                                <div class="form-group col-lg-3 col-md-3">
                                    <label>Our Experience</label>
                                    <asp:RequiredFieldValidator ID="RequiredExperience" runat="server" ControlToValidate="txtExperience" CssClass="text-danger" ErrorMessage="Our Experience Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtExperience" runat="server" CssClass="form-control" ToolTip="Our Experience"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-3 col-md-3">
                                    <label>Cake Specialist</label>
                                    <asp:RequiredFieldValidator ID="RequiredSpecialist" runat="server" ControlToValidate="txtSpecialist" CssClass="text-danger" ErrorMessage="Cake Specialist Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtSpecialist" runat="server" CssClass="form-control" ToolTip="Cake Specialist"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-3 col-md-3">
                                    <label>Complete Project</label>
                                    <asp:RequiredFieldValidator ID="RequiredProject" runat="server" ControlToValidate="txtProject" CssClass="text-danger" ErrorMessage="Complete Project Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtProject" runat="server" CssClass="form-control" ToolTip="Complete Project"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-3 col-md-3">
                                    <label>Happy Clients</label>
                                    <asp:RequiredFieldValidator ID="RequiredClients" runat="server" ControlToValidate="txtClients" CssClass="text-danger" ErrorMessage="Happy Clients Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtClients" runat="server" CssClass="form-control" ToolTip="Happy Clients"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-12 col-md-12">
                                    <label>Title</label>
                                    <asp:RequiredFieldValidator ID="RequiredTitle" runat="server" ControlToValidate="txtTitle" CssClass="text-danger" ErrorMessage="Title Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <asp:TextBox ID="txtTitle" runat="server" CssClass="form-control" ToolTip="Title"></asp:TextBox>
                                </div>

                                <div class="form-group col-lg-12 col-md-12">
                                    <label>Summary</label>
                                    <asp:RequiredFieldValidator ID="RequiredSummary" runat="server" ControlToValidate="txtSummary" CssClass="text-danger" ErrorMessage="Summary Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <textarea class="form-control" id="txtSummary" runat="server" placeholder="Summary"></textarea>
                                </div>

                                <div class="form-group col-lg-12 col-md-12">
                                    <label>Healthy Description</label>
                                    <asp:RequiredFieldValidator ID="RequiredHealthyDescription" runat="server" ControlToValidate="txtHealthyDescription" CssClass="text-danger" ErrorMessage="Healthy Description Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <textarea class="form-control" id="txtHealthyDescription" runat="server" placeholder="Healthy Description"></textarea>
                                </div>

                                <div class="form-group col-lg-12 col-md-12">
                                    <label>Award Winning Description</label>
                                    <asp:RequiredFieldValidator ID="RequiredAwardDescription" runat="server" ControlToValidate="txtAwardDescription" CssClass="text-danger" ErrorMessage="Award Winning Description Is Required" ValidationGroup="infoGroup"></asp:RequiredFieldValidator>
                                    <textarea class="form-control" id="txtAwardDescription" runat="server" placeholder="Award Winning Description"></textarea>
                                </div>

                            </div>
                        </div>
                        <div class="panel-footer">
                            <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" ValidationGroup="infoGroup" CssClass="btn btn-lg btn-rosy btn-block">
                                <i class="fa fa-pencil" aria-hidden="true"></i> Save
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
