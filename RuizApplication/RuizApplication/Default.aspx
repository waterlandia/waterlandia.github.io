<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="RuizApplication._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
<!-- This is made mostly out of bootstrap
 because I gave up on most of CSS
 and didn't want to upload a font for logos so,
 I used Bootstrap's built in logo font.
 I also used it because it allowed me
 to work on mobile first. -->
<head runat="server">
    <title>Waterlandia - Home</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Lato|Muli" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link href="StyleSheet1.css" rel="stylesheet" type="text/css" />
</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form id="form1" runat="server">
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#myPage"><span class="glyphicon glyphicon-tint"></span></a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="#about">ABOUT</a></li>
                        <li><a href="#services">SERVICES</a></li>
                        <li><a href="#pricing">PRICING</a></li>
                        <li><a href="#contact">CONTACT</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <!-- WE NEED A BACKGROUND IMAGE(S?) FOR THIS DIV (Div below the nav bar at the top of page) -->
        <!-- If we add multiple pictures we could transition through them, however having a static image
may be best -->
        <div class="jumbotron text-center">
            <h1>Waterlandia</h1>
            <!-- Possibly change the slogan color to something else or encase the whole paragraph tag with the color -->
            <p>We specialize in <span class="slogan">bringing families together</span>.</p>
        </div>

        <!-- Container (About Section) -->
        <div id="about" class="container-fluid">
            <div class="row">
                <div class="col-sm-8">
                    <h2>About (us?) Page</h2>
                    <br />
                    <h4>Waterlandia is a waterpark where lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4>
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
                    <!-- Link this to a CONTACT US page -->
                    <br />
                    <button class="btn btn-default btn-lg">Get in Touch</button>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-signal logo"></span>
                </div>
            </div>
        </div>

        <div class="container-fluid bg-grey">
            <div class="row">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-tint logo slideanim"></span>
                </div>
                <div class="col-sm-8">
                    <h2>Our Values</h2>
                    <br />
                    <h4><strong>MISSION:</strong> Our mission at Waterlandia is to bring families and friends together. lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</h4>
                    <br />
                    <p>
                        <strong>VISION:</strong> Our vision Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    </p>
                </div>
            </div>
        </div>

        <!-- Container (Services Section) -->
        <!-- Also Can Be Used As A Central Link "Hub" -->
        <div id="services" class="container-fluid text-center">
            <h2>SERVICES / ACTIVITIES</h2>
            <h4>Where the fun starts!</h4>
            <br />
            <div class="row slideanim">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-question-sign logo-small"></span>
                    <h4>SNACK BAR</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-ok-sign logo-small"></span>
                    <h4>LOVE</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-info-sign logo-small"></span>
                    <h4>JOB DONE</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
            </div>
            <br />
            <br />
            <div class="row slideanim">
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-remove-sign logo-small"></span>
                    <h4>GREEN</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-minus-sign logo-small"></span>
                    <h4>CERTIFIED</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
                </div>
                <div class="col-sm-4">
                    <span class="glyphicon glyphicon-plus-sign logo-small"></span>
                    <h4 style="color: #303030;">HARD WORK</h4>
                    <p>Lorem ipsum dolor sit amet..</p>
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
                        <h4>"My family and I always have a great time!"<br />
                            <span>Trevor Moore, Person</span></h4>
                    </div>
                    <div class="item">
                        <h4>"Whether you're with children, or elders, you are going to have a great time here!"<br />
                            <span>John Doe, Person</span></h4>
                    </div>
                    <div class="item">
                        <h4>"One word... FUN!!"<br />
                            <span>Xavier Ruiz, Person</span></h4>
                    </div>
                </div>

                <!-- Left and right controls -->
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
                <h2>Pricing</h2>
                <h4>Choose a payment plan that matches your scenario!</h4>
            </div>
            <div class="row slideanim">
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Basic (1-3 Persons)</h1>
                        </div>
                        <div class="panel-body">
                            Whether you plan on taking yourself or part of the family, choose this plan!
                        </div>
                        <div class="panel-footer">
                            <h3>$19</h3>
                            <h4>per visit</h4>
                            <button class="btn btn-lg">Buy Online</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Advanced (4-6 Persons)</h1>
                        </div>
                        <div class="panel-body">
                            This option is great if you plan on taking your friends and family members along with you!
                        </div>
                        <div class="panel-footer">
                            <h3>$29</h3>
                            <h4>per visit</h4>
                            <button class="btn btn-lg">Buy Online</button>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12">
                    <div class="panel panel-default text-center">
                        <div class="panel-heading">
                            <h1>Premium (7+ Persons) </h1>
                        </div>
                        <div class="panel-body">
                            Choosing this option will enable you to bring anyone you want with you.
                        </div>
                        <div class="panel-footer">
                            <h3>$49 + $7.99/Person</h3>
                            <h4>per visit</h4>
                            <button class="btn btn-lg">Buy Online</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Container (Contact Section) MAY STAY! HOWEVER FOR CONTACT PAGE WE ARE GOING TO ADD MORE WAYS OF CONTACT (AND LOCATIONS) -->
        <div id="contact" class="container-fluid bg-grey">
            <h2 class="text-center">CONTACT</h2>
            <div class="row">
                <div class="col-sm-5">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><span class="glyphicon glyphicon-map-marker"></span>Phoenix, US</p>
                    <p><span class="glyphicon glyphicon-phone"></span>+1 (480)-515-1515</p>
                    <p><span class="glyphicon glyphicon-envelope"></span>Waterlandia@Waterlandia-Business.com</p>
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
                            <asp:Button ID="sendContactButton" runat="server" class="btn btn-default pull-right"></asp:Button>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="Javascript.js" type="text/javascript"></script>
    </form>
</body>
</html>
