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
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="robots" content="noodp,index,follow" />
    <meta name='revisit-after' content='1 days' />
    <link rel="icon" href="images/logo-favicon.png" type="images/logo-favicon.png">
    <title>Product Cart || N One Store</title>
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
    <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
    <link href="css/modle-login.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/header/style.css" />
</head>

<body class="add-to-cart-page">
    <div class="page-wrapper wrap chiller-theme">
        <?php include './header.php'; ?>
        <!-- End Content -->
        <div id="content">
            <div class="content-page content-page-cart woocommerce">
                <div class="container">
                    <form method="POST" id="form-data">
                        <div class="cart-content-page" id="cart-popover">
                            <h2 class="title-shop-page">my cart</h2>

                            <!--Add All Data-->
                            <div class="table-responsive">
                                <div id="add-cart">
                                </div>
                            </div>

                            <!--Buttons -->
                            <div class="col-md-4 pull-right" id="hidden-cart-button">
                                <?php
                                if (empty($_SESSION['id'])) {
                                ?>
                                    <span>
                                        <a href="#myModal" class="trigger-btn back-url" data-toggle="modal" id="model-button">
                                            <input type="submit" class="btn btn-info check-btn  " value="PROCEED TO CHECKOUT" />
                                        </a>
                                    </span>

                                <?php } else { ?>
                                    <a href="./checkout.php" id="cart-form" class="btn  btn-info check-btn ">PROCEED TO CHECKOUT</a>
                                    <input type="hidden" name="customer_id_session" value="<?php echo $_SESSION['id'] ?>">
                                <?php } ?>

                                <input type="hidden" name="customer_id" id="customer_id">
                                <input type="hidden" name="create" value="create">

                                <span id="cart-form" style="display: none">
                                    <input type="submit" id="submit" class="btn  btn-info check-btn " value="PROCEED TO CHECKOUT" />
                                </span>
                                <span>
                                    <a href="#" class="btn btn-warning pull-right" id="clear_cart">
                                        <i class="fa fa-trash"></i>
                                        Clear
                                    </a>
                                </span>


                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- End Content Page -->

    <?php include './footer.php'; ?>
    <!-- End Footer -->
    </div>
    <script type="text/javascript" src="js/libs/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
    <script src="control-panel/plugins/sweetalert/sweetalert.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/libs/jquery.fancybox.js"></script>
    <script type="text/javascript" src="js/libs/jquery-ui.js"></script>
    <script type="text/javascript" src="js/libs/owl.carousel.js"></script>
    <script type="text/javascript" src="js/libs/slideshow/jquery.themepunch.revolution.html"></script>
    <script type="text/javascript" src="js/libs/slideshow/jquery.themepunch.plugins.min.html"></script>
    <script type="text/javascript" src="js/libs/jquery.jcarousellite.min.js"></script>
    <script type="text/javascript" src="js/libs/jquery.elevatezoom.js"></script>
    <script type="text/javascript" src="js/theme.js"></script>

    <script src="js/header.js" type="text/javascript"></script>
    <script src="js/add-to-cart.js" type="text/javascript"></script>
    <script src="js/login.js" type="text/javascript"></script>
    <script src="js/header/custom.js" type="text/javascript"></script>

</body>

</html>