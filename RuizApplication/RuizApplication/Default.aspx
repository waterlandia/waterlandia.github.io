<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="RuizApplication._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<head runat="server">
    <title>Waterlandia - Home</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- Favicon -->
    <link rel="shortcut icon" href="/AppData/images/favicon.ico" type="image/x-icon" />

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />

    <!-- Font Family -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Lato|Muli" rel="stylesheet" type="text/css" />

    <!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

    <!-- Bootstrap JS -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    <!-- CSS -->
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">
        <asp:Panel runat="server">
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#myPage"><img width="30" height="30" style="padding-bottom: 5px;" src="/AppData/images/RuizWaterlandiaLogo.svg" alt="Waterlandia Logo" /></a>
                    </div>
                    <div class="collapse navbar-collapse" id="myNavbar">
                        <ul class="nav navbar-nav navbar-right">
                            <li><a href="#about">ABOUT</a></li>
                            <li><a href="#services">ACTIVITIES & FOOD</a></li>
                            <li><a href="#pricing">PARTY PACKAGES</a></li>
                            <li><a href="#contact">CONTACT</a></li>
                        </ul>
                    </div>
                </div>
            </nav>

            
            <div class="jumbotron text-center">
                <h1>Waterlandia</h1>
                <p><span class="slogan">Bringing families together</span>.</p>
            </div>

            <!-- Container (About Section) -->
            <div id="about" class="container-fluid">
                <div class="row">
                    <div class="col-sm-8">
                        <h2>About</h2>
                        <br />
                        <h4>Waterlandia is a waterpark that is unlike anything you've ever seen. We have loads of activities as well as rides. In total, we have fifteen rides and more soon to follow. Each one of our rides are unique in their own way and are constantly checked for safety issues. You are bound to find a ride that suits you here at Waterlandia!</h4>
                        <br />

                        <p>Waterlandia also enjoys working with the community. We are always open to throw a nonprofit fundraiser at Waterlandia. We would also be happy to sponsor nonprofit events in the local area. To learn more about Waterlandia and our nonprofit support, please fill out a contact form by clicking the button below. </p>
                        <br />
                        <a href="#contact">
                            <button class="btn btn-default btn-lg">Contact</button>
                        </a>
                    </div>
                    <div class="col-sm-4">
                        <img style="width: 70%;" src="AppData/images/waterslide.png" alt="water slide image"/>
                    </div>
                </div>
            </div>

            <div class="container-fluid bg-grey">
                <div class="row">
                    <div class="col-sm-4">
                        <img src="/AppData/images/RuizWaterlandiaLogo.svg" alt="Waterlandia Large Logo" />
                    </div>
                    <div class="col-sm-8">
                        <h2>Our Values</h2>
                        <br />
                        <h4><strong>MISSION:</strong> To bring families and friends together.</h4>
                        <br />
                        <p>
                            <strong>VISION:</strong> Our vision at Waterlandia is to bring the greatest quality of fun and adventure (while staying safe) to every customer. We hope that everyone is enjoying their day and are riding all of the rides we have to offer! By the end of the day, we hope families, and friends, will be closer than ever before.
                        </p>
                    </div>
                </div>
            </div>

            <!-- Container (Services Section) -->
            <div id="services" class="container-fluid text-center">
                <h2>ACTIVITIES & FOOD</h2>
                <h4>Where the fun starts!</h4>
                <br />
                <div class="row slideanim">
                    <div class="col-sm-4">
                        <span class="glyphicon glyphicon-ice-lolly-tasted logo-small"></span>
                        <h4>SNACK BAR</h4>
                        <p>We have many snacks to offer such as hotdogs, chips, candy, water, and <em>more</em>!</p>
                    </div>
                    <div class="col-sm-4">
                        <span class="glyphicon glyphicon-facetime-video logo-small"></span>
                        <h4>DIVE'N'MOVIE</h4>
                        <p>Come watch movies with us! All movies are rated G so the whole family can join!</p>
                    </div>
                    <div class="col-sm-4">
                        <span class="glyphicon glyphicon-certificate logo-small"></span>
                        <h4>TWILIGHT</h4>
                        <p>Come join us on Saturdays afterhours from 3:00 P.M. to 9:00 P.M. if you buy tickets before closing.</p>
                    </div>
                </div>
                <br />
                <br />
                <div class="row slideanim">
                    <div class="col-sm-4">
                        <span class="glyphicon glyphicon-cutlery logo-small"></span>
                        <h4>CAFETERIA</h4>
                        <p>Our cafeteria has many outside vendors and the selection is amazing!</p>
                    </div>
                    <div class="col-sm-4">
                        <span class="glyphicon glyphicon-ok logo-small"></span>
                        <h4>CERTIFIED</h4>
                        <p>Rest assured, we have fully trained and ready life guards always on watch and on call.</p>
                    </div>
                    <div class="col-sm-4">
                        <span class="glyphicon glyphicon-gift logo-small"></span>
                        <h4 style="color: #303030;">PARTIES</h4>
                        <p>Parties are our most popular event here at Waterlandia, and boy do we throw parties! We offer several different types of packages for our customers based on age level and number attending. Scroll down to find out more!</p>
                    </div>
                </div>
            </div>

            <!-- Container (Portfolio Section) -->
            <div id="portfolio" class="container-fluid text-center bg-grey">
                <br />

                <h2>What our customers say</h2>
                <div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
                    <!-- Indicators -->
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>

                    <!-- Wrapper for slides -->
                    <div class="carousel-inner" role="listbox">
                        <div class="item active">
                            <h4>"My family and I always have a great time at Waterlandia!"<br />
                                <span>Trevor Moore, Customer</span></h4>
                        </div>
                        <div class="item">
                            <h4>"Whether you're with children, or elders, you are going to have a great time here!"<br />
                                <span>John Richen, Loyal Customer</span></h4>
                        </div>
                        <div class="item">
                            <h4>"The amount of things to do at Waterlandia is mind blowing!"<br />
                                <span>Xavier Ruiz, Customer</span></h4>
                        </div>
                    </div>

                    <!-- Left and right controls for the carousel -->
                    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
                        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
                        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
            </div>

            <!-- Container (Pricing Section) -->
            <div id="pricing" class="container-fluid">
                <div class="text-center">
                    <h2>PARTY PACKAGES</h2>
                    <h4>Choose a package plan that matches your scenario!</h4>
                </div>
                <div class="row slideanim">
                    <div class="col-sm-4 col-xs-12">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <h1>Starfish Package (4 and Under)</h1>
                            </div>
                            <div class="panel-body">
                                Great for the little ones, we put extra staff on board to help keep watch and everyone gets a goodybag!
                            </div>
                            <div class="panel-footer">
                                <asp:Button class="btn btn-lg" runat="server" Text="Reserve Now" PostBackUrl="~/ReservationPage/Reservation.aspx" UseSubmitBehavior="false"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <h1>Sea Lion Package (12 and Under)</h1>
                            </div>
                            <div class="panel-body">
                                Bark! Bark! The Sea Lion Package is great for children of all types and each child gets a goodybag as well as a small snack.
                            </div>
                            <div class="panel-footer">
                                <asp:Button class="btn btn-lg" runat="server" Text="Reserve Now" PostBackUrl="~/ReservationPage/Reservation.aspx" UseSubmitBehavior="false"></asp:Button>
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-4 col-xs-12">
                        <div class="panel panel-default text-center">
                            <div class="panel-heading">
                                <h1>Shark Package (12+)</h1>
                            </div>
                            <div class="panel-body">
                                This package is great for teenages and even adults! Every guest 12 and older will receive a lunch voucher that can be used in the cafeteria at one of our vendors!
                            </div>
                            <div class="panel-footer">
                                <asp:Button class="btn btn-lg" runat="server" Text="Reserve Now" PostBackUrl="~/ReservationPage/Reservation.aspx" UseSubmitBehavior="false"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="imageCarousel" class="carousel slide" data-ride="carousel">
        <!-- Carousel Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
            <li data-target="#myCarousel" data-slide-to="3"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img src="AppData/images/waterpark.jpg" alt="Chania"/>
            </div>

            <div class="item">
                
                <img src="AppData/images/waterpark1.jpg" alt="Chania"/>
            </div>

            <div class="item">
                <img src="AppData/images/waterpark2.jpg" alt="Flower"/>
            </div>

            <div class="item">
                <img src="AppData/images/waterpark3.jpg" alt="Flower"/>
            </div>
        </div>

        <!-- Left and right controls -->
        <a class="left carousel-control" href="#imageCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#imageCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
        </asp:Panel>

        <asp:Panel runat="server">
            <!--Container (Contact Section)-->
            <div id="contact" class="container-fluid bg-grey">
                <h2 class="text-center">CONTACT</h2>
                <div class="row">
                    <div class="col-sm-5">
                        <p>Contact us and we'll get back to you within 24 hours.</p>
                        <p><span class="glyphicon glyphicon-map-marker"></span> Phoenix, US</p>
                        <p><span class="glyphicon glyphicon-phone"></span> +1 (480)-515-1515</p>
                        <p><span class="glyphicon glyphicon-envelope"></span> Waterlandia@Waterlandia-Business.com</p>
                    </div>
                    <div class="col-sm-7 slideanim">
                        <div class="row">
                            <div class="col-sm-6 form-group">
                                <input class="form-control" id="name" name="name" placeholder="Name" type="text" required="required" />

                            </div>
                            <div class="col-sm-6 form-group">
                                <input class="form-control" id="email" name="email" placeholder="Email" type="email" required="required" />
                            </div>
                        </div>
                        <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea><br />
                        <div class="row">

                            <div class="col-sm-12 form-group">
                                <asp:Button runat="server" class="btn btn-default pull-right" ID="sendContactButton" Text="Contact"></asp:Button>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script src="Javascript.js" type="text/javascript"></script>
        </asp:Panel>
    </form>
    
    <!-- SVG not supported in IE -->
    <div class='water-box'>
        <svg width="0px" height="0px">
            <defs>
                <clipPath id='waterMask'>
                    <path d="m250.196991,90.641006c-9.957977,15.216995 -23.391998,21.182999 -38.290985,21.182999c-18.914001,0 -36.130005,-12.174011 -46.012009,-35.183006c-9.804001,23.495995 -27.097,35.183006 -46.242996,35.183006c-18.912994,0 -35.973999,-12.417007 -45.856003,-35.427002c-9.804001,23.73999 -27.097,35.427002 -46.473999,35.427002c-13.973,0 -26.788498,-4.992004 -36.438896,-18.505005l-7.334,-82.7813c10.036499,20.938801 25.9394,34.451298 43.772896,34.451298c19.376999,0 36.669998,-14.973099 46.473999,-38.711597c9.882004,23.008099 26.943008,38.711597 45.856003,38.711597c19.145996,0 36.438995,-14.973099 46.242996,-38.468098c9.882004,23.008099 27.098007,38.468098 46.012009,38.468098c19.299988,0 36.360992,-15.703499 46.087982,-39.441898l-7.796997,85.093906z" id="path6712" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m435.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m620.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m805.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m990.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m1175.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m1360.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m1545.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m1730.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m1915.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m2100.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m2285.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m2470.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m2655.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m2840.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m3025.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                    <path d="m3210.329034,90.956024c-9.958496,15.216614 -23.39209,21.182281 -38.291504,21.182281c-18.914154,0 -36.129272,-12.173523 -46.011353,-35.182922c-9.804016,23.496338 -27.097137,35.182922 -46.242889,35.182922c-18.9133,0 -35.974854,-12.417023 -45.856079,-35.426422c-9.80484,23.739838 -27.097168,35.426422 -46.474426,35.426422c-13.973175,0 -26.788452,-4.991882 -36.438873,-18.504395l-7.333954,-82.78157c10.036469,20.938797 25.939301,34.451294 43.772827,34.451294c19.377258,0 36.669586,-14.973145 46.474426,-38.711578c9.881226,23.008072 26.94278,38.711578 45.856079,38.711578c19.145752,0 36.438873,-14.973145 46.242889,-38.468155c9.88208,23.008118 27.097198,38.468155 46.011353,38.468155c19.30011,0 36.361694,-15.703506 46.088501,-39.441925l-7.796997,85.094315z" fill-rule="nonzero" fill="#2948cc" />
                </clipPath>
            </defs>
        </svg>
    </div>
    <!--End of IE incompatibility -->
    <div id="footer" class="container-fluid bg-grey">

        <div style="text-align: center;">
            <a href="#myPage"><span class="glyphicon glyphicon-chevron-up"></span></a><br />
            <a style="text-decoration: none;" href="#myPage">Back To Top</a> 
        </div>
    </div>

</body>
</html>
