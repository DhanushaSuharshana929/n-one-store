<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
$page_id = 1;
$PAGE = new Page($page_id);
$VISION = new Page(3);
$MISSION = new Page(4);
?>
<html lang="en-US">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="robots" content="noodp,index,follow" />
    <meta name='revisit-after' content='1 days' />
    <link rel="icon" href="images/logo-favicon.png" type="images/logo-favicon.png">
    <title>About Us || N One Store</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="css/libs/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/font-linearicons.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/bootstrap-theme.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/jquery.fancybox.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/owl.transitions.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/owl.theme.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/settings.css" />
    <link rel="stylesheet" type="text/css" href="css/theme.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" media="all" />
    <link href="css/modle-login.css" rel="stylesheet" type="text/css" />
    <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/header/style.css" />
</head>

<body>
    <div class="page-wrapper wrap chiller-theme">

        <?php include './header.php'; ?>
        <!-- End Header -->
        <div id="content">
            <div class="page-head-banner">
                <div class="container text-center">
                    <h1>About Us</h1>
                    <ul class="site-map">
                        <li class="active"><a href="/">Home</a></li>
                        <li><a> / About Us</a></li>
                    </ul>
                </div>
            </div>
            <div class="container about-us-page-container">
                <div class="row" style="margin-top: 20px;">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-5 col-sm-5">
                                <img src="upload/page/<?php echo $PAGE->image_name; ?>" class="img-responsive" />
                            </div>
                            <div class="col-md-7 col-sm-7 text-justify">
                                <?php echo $PAGE->description; ?>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="item-feature-box text-center feature-box-style-10">
                                <div class="feature-box-icon">
                                    <a href="#" class="feature-box-link">
                                        <span class="lnr lnr-eye"></span>
                                    </a>
                                </div>
                                <div class="feature-box-info">
                                    <h3><a href="#">Vision</a></h3>
                                    <?php echo $VISION->description; ?>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="item-feature-box text-center feature-box-style-10 mission-box">
                                <div class="feature-box-icon">
                                    <a href="#" class="feature-box-link">
                                        <span class="lnr lnr-arrow-up"></span>
                                    </a>
                                </div>
                                <div class="feature-box-info">
                                    <h3><a href="#">Mission</a></h3>
                                    <?php echo $MISSION->description; ?>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- Place Order Button -->
            <!--End Place Order Button -->
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
    <script src="js/login.js" type="text/javascript"></script>
    <script src="js/header.js" type="text/javascript"></script>
    <script src="js/add-to-cart.js" type="text/javascript"></script>
    <script src="js/header/custom.js" type="text/javascript"></script>
</body>

</html>