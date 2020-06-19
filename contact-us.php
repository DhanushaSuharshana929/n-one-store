<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
?>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="robots" content="noodp,index,follow" />
        <meta name='revisit-after' content='1 days' />
        <link rel="icon" href="images/logo-favicon.png" type="images/logo-favicon.png">
        <title>Contact Us || N One Store</title>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet'>
        <link rel="stylesheet" type="text/css" href="css/libs/font-awesome.min.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/font-linearicons.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/bootstrap.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/bootstrap-theme.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/jquery.fancybox.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/jquery-ui.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/owl.carousel.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/owl.transitions.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/owl.theme.css"/>
        <link rel="stylesheet" type="text/css" href="css/libs/settings.css"/>
        <link rel="stylesheet" type="text/css" href="css/theme.css" media="all"/>
        <link rel="stylesheet" type="text/css" href="css/responsive.css" media="all"/>
        <link href="css/modle-login.css" rel="stylesheet" type="text/css"/>
        <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link href="contact-form/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wrap" >

            <?php include './header.php'; ?> 
            <!-- End Header -->
            <div id="content" >
                <div class="page-head-banner">
                    <div class="container text-center">
                        <h1>Contact Us</h1>
                        <ul class="site-map">
                            <li class="active"><a href="/">Home</a></li>
                            <li><a> / Contact Us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="content-page">
                    <div class="container"> 
                        <div class="row">
                            <div class="col-md-4">
                                <div class="contact-d-box">
                                    <div class="item-contact-info">
                                        <h2><i class="fa fa-phone"></i> : Call Us</h2>
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <a href="tel:+94716667557"> +94 11 2883 717 / +94 76 7176 677 </a> 
                                            </li>
                                           
                                        </ul>
                                    </div>
                                </div>
                                <div class="contact-d-box">
                                    <div class="item-contact-info">
                                        <h2><i class="fa fa-envelope-o"></i> : Write Us</h2>
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <a href="mailto:info@nonestore.lk">info@nonestore.lk</a> 
                                            </li> 
                                        </ul>
                                    </div>
                                </div>
                                <div class="contact-d-box">
                                    <div class="item-contact-info">
                                        <h2><i class="fa fa-map-marker"></i> : Visit Us</h2>
                                        <ul class="list-group">
                                            <li class="list-group-item">
                                                <a>563/16, Sarasavi Mawatha, Nawala road, Rajagiriya.</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="contact-d-box">
                                    <p>
                                        If the supplier fails to ship your products on time or the product quality does not meet the standards set in your contract.
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-8">
                                <div class="panel-group contact-panel">
                                    <div class="panel panel-default c-f-head">
                                        <div class="panel-body">
                                            <span>Contact From</span>
                                        </div>
                                    </div>
                                    <div class="panel panel-default">
                                        <div class="panel-body">
                                            <div class="contact-form-page">

                                                <div class="form-contact">
                                                    <div class="row">
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <span id="spanFullName"></span>
                                                            <input type="text" name="name" id="txtFullName" placeholder="Full Name *">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <span id="spanEmail"></span>
                                                            <input type="text" name="email" id="txtEmail" placeholder="Email *" >
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <span id="spanPhone"></span>
                                                            <input type="text" name="phone" id="txtPhone" placeholder="Phone Number *">
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-xs-12">
                                                            <span id="spanMessage"></span>
                                                            <textarea name="message" cols="30" rows="8" id="txtMessage" placeholder="Message *"></textarea>
                                                        </div>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <span id="capspan"></span>
                                                            <input type="text" placeholder="Security Code" name="captchacode" id="captchacode" />
                                                        </div>
                                                        <div class="col-md-6 col-sm-6 col-xs-12">
                                                            <?php
                                                            include ("./contact-form/captchacode-widget.php");
                                                            ?>
                                                            <img id="checking" src="contact-form/img/checking.gif" alt=""/>
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-xs-12 form-group">
                                                            <input type="submit" id="btnSubmit" value="Send" />
                                                        </div>
                                                        <div class="col-md-12 col-sm-12 col-xs-12 contact-us-button">
                                                            <div id="dismessage" align="center" class="msg-success"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div> 
                                        </div>
                                    </div>
                                </div> 

                            </div>
                        </div>


                    </div>
                </div>
                <!-- Place Order Button -->
                <!-- End Content -->
                <?php include './footer.php'; ?>
                <!-- End Footer -->
            </div>
        </div>
        <script type="text/javascript" src="js/libs/jquery-3.1.1.min.js"></script>
        <script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
        <script type="text/javascript" src="js/libs/jquery.fancybox.js"></script>
        <script type="text/javascript" src="js/libs/jquery-ui.js"></script>
        <script type="text/javascript" src="js/libs/owl.carousel.js"></script>
        <script type="text/javascript" src="js/libs/slideshow/jquery.themepunch.revolution.html"></script>
        <script type="text/javascript" src="js/libs/slideshow/jquery.themepunch.plugins.min.html"></script>
        <script type="text/javascript" src="js/libs/jquery.jcarousellite.min.js"></script>
        <script type="text/javascript" src="js/libs/jquery.elevatezoom.js"></script>
        <script type="text/javascript" src="js/theme.js"></script>
        <script src="control-panel/plugins/sweetalert/sweetalert.min.js" type="text/javascript"></script>
        <script src="js/product-by-brand.js" type="text/javascript"></script>
        <script src="js/login.js" type="text/javascript"></script>
        <script src="contact-form/scripts.js" type="text/javascript"></script>
        <script src="js/header.js" type="text/javascript"></script>
        <script src="js/add-to-cart.js" type="text/javascript"></script>
    </body>
</html>