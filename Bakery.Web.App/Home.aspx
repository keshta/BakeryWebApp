<%@ Page Title="Home" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Bakery.Web.App.Home" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                <li data-target="#myCarousel" data-slide-to="1"></li>
                <li data-target="#myCarousel" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="Content/assets/img/cover/01.jpg" class="bd-placeholder-img" />
                    <div class="container">
                        <div class="carousel-caption text-left">
                            <!--<h1>Example headline.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Sign up today</a></p>-->
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Content/assets/img/cover/02.jpg" class="bd-placeholder-img" />
                    <div class="container">
                        <div class="carousel-caption">
                            <!--<h1>Another example headline.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>-->
                        </div>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="Content/assets/img/cover/03.jpg" class="bd-placeholder-img" />
                    <div class="container">
                        <div class="carousel-caption text-right">
                            <!--<h1>One more for good measure.</h1>
                        <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                        <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>-->
                        </div>
                    </div>
                </div>
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
                <div class="col-md-3">
                    <div class="card mb-3 shadow-sm" onClick="openUrl('ProductDetails.aspx');">
                        <img src="Content/assets/img/product/01.jpg" />
                        <span class="lbl-price"> $12,00 </span>
                        <div class="card-body">
                            <b> <a href="ProductDetails.aspx" class="prod-title text-dark"> Cookie Cake</a> </b>
                            <div class="text-center pt-2">
                                <div class="row prod-info">
                                    <div class="col">
                                        <label class="">Brand:</label> <span> dd</span>
                                    </div>

                                    <div class="col">
                                        <label class="">Category:</label> <span> dd</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card mb-3 shadow-sm" onClick="openUrl('ProductDetails.aspx');">
                        <img src="Content/assets/img/product/02.jpg" />
                        <span class="lbl-price"> $12,00 </span>
                        <div class="card-body">
                            <b> <a href="ProductDetails.aspx" class="prod-title text-dark"> Cookies</a> </b>
                            <div class="text-center pt-2">
                                <div class="row prod-info">
                                    <div class="col">
                                        <label class="">Brand:</label> <span> dd</span>
                                    </div>

                                    <div class="col">
                                        <label class="">Category:</label> <span> dd</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card mb-3 shadow-sm" onClick="openUrl('ProductDetails.aspx');">
                        <img src="Content/assets/img/product/03.jpg" />
                        <span class="lbl-price"> $12,00 </span>
                        <div class="card-body">
                            <b> <a href="ProductDetails.aspx" class="prod-title text-dark"> Donuts</a> </b>
                            <div class="text-center pt-2">
                                <div class="row prod-info">
                                    <div class="col">
                                        <label class="">Brand:</label> <span> dd</span>
                                    </div>

                                    <div class="col">
                                        <label class="">Category:</label> <span> dd</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card mb-3 shadow-sm" onClick="openUrl('ProductDetails.aspx');">
                        <img src="Content/assets/img/product/04.jpg" />
                        <span class="lbl-price"> $12,00 </span>
                        <div class="card-body">
                            <b> <a href="ProductDetails.aspx" class="prod-title text-dark"> Sable</a> </b>
                            <div class="text-center pt-2">
                                <div class="row prod-info">
                                    <div class="col">
                                        <label class="">Brand:</label> <span> dd</span>
                                    </div>

                                    <div class="col">
                                        <label class="">Category:</label> <span> dd</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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
                                <img class="position-absolute w-100 h-100" src="https://demo.htmlcodex.com/1821/cake-shop-website-template/img/about.jpg" style="object-fit: cover; border-radius:35px;">
                            </div>
                        </div>
                        <div class="col-lg-6 pb-5">
                            <h4 class="mb-4">Tempor erat elitr rebum clita. Diam dolor diam ipsum erat lorem sed stet labore lorem sit clita duo</h4>
                            <p class="mb-5">Tempor erat elitr at rebum at at clita. Diam dolor diam ipsum et tempor sit. Clita erat ipsum et lorem et sit, sed stet no labore lorem sit. Sanctus clita duo justo et tempor eirmod magna dolore erat amet magna</p>
                            <div class="row g-5">
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center justify-content-center bg-rosy border-inner mb-4" style="width: 90px; height: 90px;">
                                        <i class="fa fa-heartbeat fa-2x text-white"></i>
                                    </div>
                                    <h4 class="text-uppercase">100% Healthy</h4>
                                    <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita nonumy dolor magna dolor vero</p>
                                </div>
                                <div class="col-sm-6">
                                    <div class="d-flex align-items-center justify-content-center bg-rosy border-inner mb-4" style="width: 90px; height: 90px;">
                                        <i class="fa fa-trophy fa-2x text-white"></i>
                                    </div>
                                    <h4 class="text-uppercase">Award Winning</h4>
                                    <p class="mb-0">Labore justo vero ipsum sit clita erat lorem magna clita nonumy dolor magna dolor vero</p>
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
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up">12345</h4>
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
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up">12345</h4>
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
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up">12345</h4>
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
                                <h4 class="display-5 text-dark  mb-0" data-toggle="counter-up">12345</h4>
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
                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm" onclick="openUrl('BlogDetails.aspx');">
                        <img src="Content/assets/img/blog/01.jpg" />
                        <div class="card-body">
                            <span class="date">
                                <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                12 nov
                            </span>
                            <h5> Where Can I Get Some? </h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <div class="text-center">
                                <div class="btn-group">
                                    <a href="BlogDetails.aspx" class="btn btn-md btn-rosy">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm" onclick="openUrl('BlogDetails.aspx');">
                        <img src="Content/assets/img/blog/02.jpg" />
                        <div class="card-body">
                            <span class="date">
                                <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                12 nov
                            </span>
                            <h5> Where Can I Get Some? </h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <div class="text-center">
                                <div class="btn-group">
                                    <a href="BlogDetails.aspx" class="btn btn-md btn-rosy">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <div class="card mb-4 shadow-sm" onclick="openUrl('BlogDetails.aspx');">
                        <img src="Content/assets/img/blog/03.jpg" />
                        <div class="card-body">
                            <span class="date">
                                <i class="fa fa-calendar-o" aria-hidden="true"></i>
                                12 nov
                            </span>
                            <h5> Where Can I Get Some? </h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            <div class="text-center">
                                <div class="btn-group">
                                    <a href="BlogDetails.aspx" class="btn btn-md btn-rosy">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- START THE FEATURETTES -->
        </div>

        <hr class="featurette-divider">
        <div class="container marketing">
            <h1 class="text-center lbl"> Brands </h1>
            <div class="row brand text-center">
                <div class="col-lg-2 col-md-2">
                    <img src="Content/assets/img/brand/01.png" />
                </div>
                <div class="col-lg-2 col-md-2">
                    <img src="Content/assets/img/brand/monginis.png" />
                </div>
                <div class="col-lg-2 col-md-2">
                    <img src="Content/assets/img/brand/02.png" />
                </div>
                <div class="col-lg-2 col-md-2">
                    <img src="Content/assets/img/brand/03.png" />
                </div>
                <div class="col-lg-2 col-md-2">
                    <img src="Content/assets/img/brand/04.png" />
                </div>
                <div class="col-lg-2 col-md-2">
                    <img src="Content/assets/img/brand/05.png" />
                </div>
            </div>
        </div>

</asp:Content>
