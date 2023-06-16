<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bakery.Web.App.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <asp:Literal ID="LiteralSlideshowCarousel" runat="server"></asp:Literal>
            </ol>
            <div class="carousel-inner">
                <asp:Literal ID="LiteralSlideshow" runat="server"></asp:Literal>
              
            </div>
            <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>

        <!-- Marketing messaging and featurettes
    ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->

        <div class="container marketing peoduct">
            <h1 class="text-center lbl"> Top Product </h1>
            <!-- Three columns of text below the carousel -->
            <div class="row card-radius">
                <asp:Literal ID="LiteralProduct" runat="server"></asp:Literal>
            </div><!-- /.row -->
            <!-- START THE FEATURETTES -->

            <hr class="featurette-divider">

            <div class="container-fluid">
                <div class="container">
                    <div class="section-title position-relative text-center mx-auto mb-3 pb-3" style="max-width: 600px;">
                        <h1 class="text-uppercase lbl">Welcome To Bakery Shop</h1>
                    </div>
                    <div class="row gx-5">
                        <div class="col-lg-5 mb-5 mb-lg-0" style="min-height: 400px;">
                            <div class="position-relative h-100">
                                <img class="position-absolute w-100 h-100" src="Content/assets/img/about.jpg" style="object-fit: cover; border-radius:35px;">
                            </div>
                        </div>
                        <div class="col-lg-6 pb-5">
                            <h4 class="mb-4" id="lblTitleInfo" runat="server"> </h4>
                            <p class="mb-5" id="lblSummaryInfo" runat="server"> </p>
                            <div class="row g-5">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center justify-content-center bg-rosy border-inner mb-4" style="width: 90px; height: 90px;">
                                        <i class="fa fa-heartbeat fa-2x text-white"></i>
                                    </div>
                                    <h4 class="text-uppercase">100% Healthy</h4>
                                    <p class="mb-0" id="lblHealthy" runat="server"> </p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center justify-content-center bg-rosy border-inner mb-4" style="width: 90px; height: 90px;">
                                        <i class="fa fa-trophy fa-2x text-white"></i>
                                    </div>
                                    <h4 class="text-uppercase">Award Winning</h4>
                                    <p class="mb-0" id="lblAwardWinning" runat="server"> </p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <hr class="featurette-divider">

            <!-- /END THE FEATURETTES -->

        </div><!-- /.container -->

        <div class="container-fluid service bg-img py-5 mb-5">
            <div class="container pr-0 pl-0">
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="d-flex">
                            <div class="box bg-rosy border-inner d-flex align-items-center justify-content-center mb-3">
                                <i class="fa fa-star text-white"></i>
                            </div>
                            <div class="pl-2 pr-2">
                                <h6 class="text-rosy text-uppercase">Our Experience</h6>
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up" id="lblOurExperience" runat="server"> </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="d-flex">
                            <div class="box bg-rosy border-inner d-flex align-items-center justify-content-center mb-3">
                                <i class="fa fa-users text-white"></i>
                            </div>
                            <div class="pl-2 pr-2">
                                <h6 class="text-rosy text-uppercase">Cake Specialist</h6>
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up" id="lblCakeSpecialist" runat="server"> </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="d-flex">
                            <div class="box bg-rosy border-inner d-flex align-items-center justify-content-center mb-3">
                                <i class="fa fa-check text-white"></i>
                            </div>
                            <div class="pl-2 pr-2">
                                <h6 class="text-rosy text-uppercase">Complete Project</h6>
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up" id="lblCompleteProject" runat="server"> </h4>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <div class="d-flex">
                            <div class="box bg-rosy border-inner d-flex align-items-center justify-content-center mb-3">
                                <i class="fa fa-coffee text-white"></i>
                            </div>
                            <div class="pl-2 pr-2">
                                <h6 class="text-rosy text-uppercase">Happy Clients</h6>
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up" id="lblHappyClients" runat="server"> </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container marketing">
            <h1 class="text-center lbl"> Latest Blog </h1>
            <!-- Three columns of text below the carousel -->
            <div class="row blog card-radius">
               <asp:Literal ID="LiteralBlog" runat="server"></asp:Literal>
            </div>
            <!-- START THE FEATURETTES -->
        </div>

        <hr class="featurette-divider">
        <div class="container marketing">
            <h1 class="text-center lbl"> Brands </h1>
            <div class="row brand text-center">
                <asp:Literal ID="LiteralBrand" runat="server"></asp:Literal>
            </div>
        </div>

</asp:Content>
