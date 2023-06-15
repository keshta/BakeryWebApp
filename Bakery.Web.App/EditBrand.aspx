<%@ Page Title="Edit Brand" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditBrand.aspx.cs" Inherits="Bakery.Web.App.EditBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Edit </h1><ul class="breadcrumb">
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
                                <a href="brandList.aspx">
                                    Brand
                                </a>
                            </li>

                            <li class="breadcrumb-item">
                                <a href="#">
                                    Edit Brand
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
                                <h4 class="panel-title"> Edit Brand</h4>
                                <span class="pull-right clickable"><i class="glyphicon glyphicon-chevron-up"></i></span>
                            </div>
                            <div class="panel-body mh-panel pt-5">
                                <div class="row">
                                   <div class="form-group col-lg-12 col-md-12">
                                        <label>Name</label>
                                        <asp:RequiredFieldValidator ID="RequiredName" runat="server" ControlToValidate="txtName" CssClass="text-danger" 
                                                                    ErrorMessage="Name Is Required" ValidationGroup="brandGroup">
                                        </asp:RequiredFieldValidator>
                                        <asp:TextBox ID="txtName" runat="server" CssClass="form-control" ToolTip="Location"></asp:TextBox>
                                    </div>

                                    <div class="col-lg-6 col-md-6">
                                        <label for="formFileLg" class="form-label"> Image</label>
                                          <%--<asp:RequiredFieldValidator ID="RequiredImage" runat="server" ControlToValidate="FileUpload" CssClass="text-danger" 
                                                                    Display="Dynamic" ErrorMessage="Image Is Required" ValidationGroup="blogGroup">
                                         </asp:RequiredFieldValidator>--%>

                                        <asp:FileUpload ID="FileUpload" runat="server" onchange="readURL(this);" CssClass="form-control form-control-md"/>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <img id="blah" runat="server" class="img-preview" src="Content/assets/img/default-cover.jpg" alt="your image" />
                                    </div>
                                </div>
                            </div>
                            <div class="panel-footer">
                               <asp:LinkButton ID="lnkSave" runat="server" OnClick="lnkSave_Click" ValidationGroup="blogGroup" CssClass="btn btn-primary btn-fill mrg-r-10">
                                    <i class="fa fa-floppy-o"></i> Save
                                </asp:LinkButton>
                                <a href="BrandList.aspx" class="btn btn-dark ml-2 mr-2">
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
