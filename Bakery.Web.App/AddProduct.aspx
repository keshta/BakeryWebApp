<%@ Page Title="Add Product" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Bakery.Web.App.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Add </h1><ul class="breadcrumb">
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
                                <a href="ProductList.aspx">
                                    Product
                                </a>
                            </li>

                            <li class="breadcrumb-item">
                                <a href="#">
                                    Add Product
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
                                <h4 class="panel-title"> Add Product</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-3">
                                <div class="row">

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Name</label>
                                         <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" CssClass="text-danger" 
                                                                    ErrorMessage="Name Is Required" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ToolTip="Name"></asp:TextBox>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6"> </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Brand</label>
                                        <asp:RequiredFieldValidator ID="RequiredBrand" runat="server" ControlToValidate="dropBrand" CssClass="text-danger" 
                                                                    ErrorMessage="Chose Brand" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                       <asp:DropDownList ID="dropBrand" runat="server" CssClass="form-control"></asp:DropDownList>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Category</label>
                                        <asp:RequiredFieldValidator ID="RequiredCategory" runat="server" ControlToValidate="dropCategory" CssClass="text-danger" 
                                                                    ErrorMessage="Chose Category" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                        <asp:DropDownList ID="dropCategory" runat="server" CssClass="form-control"></asp:DropDownList>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Price</label>
                                        <asp:RequiredFieldValidator ID="RequiredPrice" runat="server" ControlToValidate="txtPrice" CssClass="text-danger" 
                                                                    ErrorMessage="Price Is Required" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtPrice" runat="server" CssClass="form-control onlyNumber" ToolTip="Price"></asp:TextBox>
                                    </div>

                                    <div class="form-group col-lg-6 col-md-6">
                                        <label>Discount</label>
                                        <asp:TextBox ID="txtDiscount" runat="server" CssClass="form-control onlyNumber" ToolTip="Discount"></asp:TextBox>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <label for="formFileLg" class="form-label"> Image </label>
                                         <asp:RequiredFieldValidator ID="RequiredImage" runat="server" ControlToValidate="FileUpload" CssClass="text-danger" 
                                                                    Display="Dynamic" ErrorMessage="Image Is Required" ValidationGroup="productGroup">
                                         </asp:RequiredFieldValidator>
                                        <asp:FileUpload ID="FileUpload" runat="server" onchange="readURL(this);" CssClass="form-control form-control-md"/>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <img id="blah" class="img-preview" src="Content/assets/img/default-cover.jpg" alt="your image" />
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Summary</label>
                                         <asp:RequiredFieldValidator ID="RequiredSummary" runat="server" ControlToValidate="txtSummary" CssClass="text-danger" 
                                                                    ErrorMessage="Summary Is Required" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                        <textarea class="form-control" id="txtSummary" runat="server" placeholder="Summary"></textarea>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Information</label>
                                         <asp:RequiredFieldValidator ID="RequiredInformation" runat="server" ControlToValidate="txtInformation" CssClass="text-danger" 
                                                                    ErrorMessage="Information Is Required" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                        <textarea class="form-control" id="txtInformation" runat="server" placeholder="Information"></textarea>
                                    </div>

                                    <div class="form-group col-12">
                                        <label>Description</label>
                                         <asp:RequiredFieldValidator ID="RequiredDescription" runat="server" ControlToValidate="txtDescription" CssClass="text-danger" 
                                                                    ErrorMessage="Description Is Required" ValidationGroup="productGroup">
                                        </asp:RequiredFieldValidator>
                                        <textarea class="form-control" id="txtDescription" runat="server" placeholder="Description"></textarea>
                                    </div>

                                </div>
                            </div>
                            <div class="panel-footer">
                                 <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" ValidationGroup="productGroup" CssClass="btn btn-primary btn-fill mrg-r-10">
                                    <i class="fa fa-floppy-o"></i> Add
                                </asp:LinkButton>
                                <a href="ProductList.aspx" class="btn btn-dark ml-2 mr-2">
                                    <i class="fa fa-list"></i>
                                    List
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">
       <script>
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#blah').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
       </script>
</asp:Content>