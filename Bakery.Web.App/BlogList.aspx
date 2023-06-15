<%@ Page Title="Blog List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="BlogList.aspx.cs" Inherits="Bakery.Web.App.BlogList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Blog </h1><ul class="breadcrumb">
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
                                    Blog
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
                                <h4 class="panel-title"> List Blog</h4>
                            </div>
                            <div class="panel-body">
                                <a href="AddBlog.aspx" class="btn btn-primary">
                                    <i class="fa fa-plus"></i>
                                    Add
                                </a>
                                <div class="overflow-auto">
                                    <table class="table table-bordered text-center mt-3">
                                        <thead class="bg-rosy text-white">
                                            <tr>
                                                <th scope="col">Title</th>
                                                <th scope="col">Image</th>
                                                <th scope="col"> </th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <asp:Literal ID="LiteralBody" runat="server"></asp:Literal>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!--<div class="panel-footer">Panel Footer</div>-->
                        </div>
                    </div>
                </div>

            </div>
        </div>
 <!-- Modal -->
    <div id="deleteModal" class="modal fade" role="dialog">
        <div class="modal-dialog">

            <!-- Modal content-->
            <div class="modal-content">
                <div class="modal-header dir-ltr">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Delete</h4>
                </div>
                <div class="modal-body">
                    <p>Are you sure you want to delete this item?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" onclick="btnConfirmDelete();">Yes</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">No</button>
                </div>
            </div>

        </div>
    </div>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentScript" runat="server">

    <script>
        var itemId = 0;
        function btnDelete(id) {
            itemId = id;
            $("#deleteModal").modal('show');
        }

        function btnConfirmDelete() {
            $.ajax({
                type: "POST",
                url: "BlogList.aspx/DeleteItem",
                data: '{id: ' + parseInt(itemId) + '}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (result) {
                    $("#deleteModal").modal('hide');
                    location.reload();
                }, error: function (XMLHttpRequest, textStatus, errorThrown) {
                    debugger;
                    //alert(XMLHttpRequest);
                }
            });

        }
    </script>
</asp:Content>
