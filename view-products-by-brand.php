<!DOCTYPE HTML>
<?php
include './class/include.php';

$id = '';
$id = $_GET['id'];
$BRAND = new Brand($id);


$PRODUCT = new Product(NULL);
$PRODUCT_CATEGORIES = new ProductCategories($id);
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
    <title>Products || N One Store</title>
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
                    <h1><?php echo $BRAND->name; ?></h1>
                    <ul class="site-map">
                        <li class="active"><a href="/">Home</a></li>
                        <li><a> / Brands</a></li>
                        <li><a> / <?php echo $BRAND->name; ?></a></li>
                    </ul>
                </div>
            </div>
            <div class="content-shop">
                <div class="row">
                    <div class="container">
                        <div class="col-md-3 col-sm-4 col-xs-12">
                            <div class="sidebar-shop sidebar-left">
                                <div class="widget widget-filter">
                                    <div class="box-filter manufacturer-filter">
                                        <h2 class="widget-title">Brands</h2>
                                    </div>
                                    <div class="box-filter  ">
                                        <!-- End Price -->
                                        <div class="box-filter color-filter">
                                            <div class="box-filter price-filter">

                                                <div class="inner-price-filter">
                                                    <ul>
                                                        <?php
                                                        $BRANDS = new Brand(NULL);
                                                        foreach ($BRANDS->all() as $brand) {
                                                            $COUNT_PRODUCT = count(Product::getProductsByBrand($brand['id']));
                                                            $checked = '';
                                                            $disabled = '';
                                                            if ($brand['id'] == $id) {
                                                                $checked = 'checked';
                                                                $disabled = 'disabled';
                                                            }
                                                        ?>
                                                            <li>
                                                                <input type="checkbox" class="common_selector brand" <?php echo $checked . ' ' . $disabled; ?> value="<?php echo $brand['id'] ?>">
                                                                <?php echo $brand['name'] . ' (' . $COUNT_PRODUCT . ')'; ?>
                                                            </li>
                                                        <?php }
                                                        ?>
                                                    </ul>
                                                </div>

                                            </div>
                                            <div class="box-filter manufacturer-filter">
                                                <h2 class="widget-title">Price</h2>
                                            </div>
                                            <input type="hidden" id="hidden_minimum_price" value="0">
                                            <input type="hidden" id="hidden_maximum_price" id="10000">
                                            <input type="hidden" id="brand_id" value="<?php echo $BRAND->id ?>">
                                            <p id="price_show"></p>

                                            <div id="price_range">

                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <!-- End Filter -->

                            </div>
                        </div>

                        <!--Append All Filter data in product filter _data class-->
                        <div class="col-md-9 col-sm-8 col-xs-12">
                            <div class="filter_data ">
                            </div>

                            <!--Show Pagination Filter data-->
                            <div class="row">
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div id="show_pagination">
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
                <!-- End Content Shop -->
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
    <script src="js/product-by-brand.js" type="text/javascript"></script>
    <script src="js/add-to-cart.js" type="text/javascript"></script>
    <script src="js/login.js" type="text/javascript"></script>
    <script src="js/header.js" type="text/javascript"></script>
    <script src="js/header/custom.js" type="text/javascript"></script>
</body>

</html>