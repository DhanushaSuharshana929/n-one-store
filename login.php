<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
$return = '';
$order = '';
if (isset($_GET['return'])) {
    $return = 'return';
    $order = $_GET['id'];
}

if (isset($_GET['member'])) {
    $return = 'member';
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
        <title>Member Login || N One Store</title>
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
        <link href="css/login-css.css" rel="stylesheet" type="text/css"/>
        <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link href="css/modle-login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="wrap">
            <?php include './header.php'; ?>
            <!-- End Header -->
            <div id="content">
                <div class="content-page">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10 col-sm-12 col-xs-12 col-md-offset-1"> 

                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3"> 
                                        <div class="modal-dialog modal-login">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <div class="avatar">
                                                        <img src="images/default-man.png" alt="Member" class="img-circle">
                                                    </div>				
                                                    <h4 class="modal-title">Member Login</h4>	
                                                </div>
                                                <div class="modal-body">
                                                    <form   method="post" id="login-page-form">
                                                        <div class="form-group">
                                                            <input type="email" class="form-control" name="user_email" id="email" placeholder="Email" >		
                                                        </div>
                                                        <div class="form-group">
                                                            <input type="password" class="form-control" name="user_password" id="password" placeholder="Password" >	
                                                        </div>        
                                                        <div class="form-group">
                                                            <input type="hidden"  id="back_url" value="<?php echo $return; ?>" >	
                                                            <input type="hidden"  id="back_order" value="<?php echo $order; ?>" >	
                                                            <button type="submit" name="login-submit" id="login-page-btn" class="btn btn-primary btn-lg btn-block login-btn">Login</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer ">
                                                    <div class="pull-left">
                                                        <a href="forget-password.php">Forgot Password?</a>
                                                    </div>
                                                    <div class="pull-right">
                                                        <a href="registration.php">Not a member?  <span style="color: #5ee600;">Sign Up</span></a>
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
            <!-- End Content Page -->
        </div>
        <!-- End Content -->
        <?php include './footer.php'; ?>
        <!-- End Footer -->
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
    <script src="js/header.js" type="text/javascript"></script>
    <script src="control-panel/plugins/sweetalert/sweetalert.min.js" type="text/javascript"></script>
    <script src="js/login-page.js" type="text/javascript"></script>
    <script src="js/add-to-cart.js" type="text/javascript"></script>

</body>
</html>

