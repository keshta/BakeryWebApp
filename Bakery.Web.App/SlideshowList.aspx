<%@ Page Title="Slideshow List" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SlideshowList.aspx.cs" Inherits="Bakery.Web.App.SlideshowList" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
      <div class="cover">
            <div class="breadcrumb-main">
                <div class="container">
                    <div class="breadcrumb-container">
                        <h1 class="page-title"> Slideshow </h1><ul class="breadcrumb">
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
                            <li class="breadcrumb-item">
                                <a href="#">
                                    Slideshow
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
                                <h4 class="panel-title"> List Slideshow</h4>
                            </div>
                            <div class="panel-body">
                                <a href="AddSlideshow.aspx" class="btn btn-primary">
                                    <i class="fa fa-plus"></i>
                                    Add
                                </a>
                                <table class="table table-bordered text-center mt-3">
                                    <thead class="bg-rosy text-white">
                                        <tr>
                                            <th scope="col">Image</th>
                                            <th scope="col"></th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Literal ID="LiteralBody" runat="server"></asp:Literal>
                                    </tbody>
                                </table>

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
                url: "SlideshowList.aspx/DeleteItem",
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
