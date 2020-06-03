<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
$id = '';
if (isset($_GET["id"])) {
    $id = $_GET["id"];
}
$subcategories = SubCategory::getSubCategoriesByCategory($id);
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
        <title>Products || N One Store</title>
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
        <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link href="css/modle-login.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="wrap" >

            <?php include './header.php'; ?> 
            <!-- End Header -->
            <div id="content">
                <div class="content-shop">
                    <div class="container">
                        <div class="row">
<!--                            <div class="hidden-sm hidden-xs">
                                <div class="wrap-category-hover4">
                                    <div class="inner-category-hover4">
                                        <a href="all-categories.php"><h2 class="title-category-hover"><span>Categories</span></h2></a>
                                    </div>
                                </div>
                            </div>-->
                            <div class="list-product-new list-category">
                                <div class="row">
                                    <?php
                                    foreach ($subcategories as $subcategory) {
                                        $COUNT = count(Product::getProductsBySubProduct($subcategory['id']));
                                        ?>
                                        <div class="col-md-3 col-sm-4 col-xs-12">
                                            <div class="item-product">
                                                <div class="product-thumb">
                                                    <a class="product-thumb-link" href="all-products-by-category.php?id=<?php echo $id; ?>&subcategory=<?php echo $subcategory['id']; ?>">
                                                        <img src="upload/product-categories/sub-category/<?php echo $subcategory['image_name']; ?>" alt="" class="first-thumb">
                                                        <img src="upload/product-categories/sub-category/<?php echo $subcategory['image_name']; ?>" alt="" class="second-thumb">
                                                    </a>
<!--                                                    <div class="product-info-cart">
                                                        <a class="addcart-link" href="all-products-by-category.php?id=<?php echo $subcategory['id']; ?>">View Products</a>
                                                    </div>-->
                                                </div>
                                                <div class="product-info1">
                                                    <h3 class="title-product">
                                                        <a href="all-products-by-category.php?id=<?php echo $id; ?>&subcategory=<?php echo $subcategory['id']; ?>"><?php echo $subcategory['name'] . ' ('. $COUNT .')'; ?> </a>
                                                    </h3>
                                                </div>
                                            </div>
                                        </div>
                                        <?php
                                    }
                                    ?>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Place Order Button -->
                
                <!--End Place Order Button -->
                <?php include './footer.php'; ?>
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
        <script src="js/product.js" type="text/javascript"></script>
        <script src="js/login.js" type="text/javascript"></script>
        <script src="js/header.js" type="text/javascript"></script>
        <script src="js/add-to-cart.js" type="text/javascript"></script>
    </body>
</html>