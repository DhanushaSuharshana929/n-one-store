<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
$get_cat = null;
$get_brand = null;
$get_subcat = null;
$title = 'All Products';
$products = Product::all();
if (isset($_GET['cat'])) {
    $get_cat = $_GET['cat'];
    $CAT = new ProductCategories($_GET['cat']);
    $title = $CAT->name;
    $products = Product::getProductsByCategory($get_cat);
}
if (isset($_GET['subcat'])) {
    $get_subcat = $_GET['subcat'];
    $SUBCAT = new SubCategory($_GET['subcat']);
    $title = $SUBCAT->name;
    $products = Product::getProductsBySubCategory($get_subcat);
}
if (isset($_GET['brand'])) {
    $get_brand = $_GET['brand'];
    $BRAND = new Brand($_GET['brand']);
    $title = $BRAND->name;
    $products = Product::getProductsByBrand($get_brand);
}

if (isset($_GET["page"])) {
    $page = (int) $_GET["page"];
} else {
    $page = 1;
}
$setlimit = 24;

$pagelimit = ($page * $setlimit) - $setlimit;
?>
<!DOCTYPE HTML>
<html lang="en-US">

<meta http-equiv="content-type" content="text/html;charset=UTF-8" />

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="robots" content="noodp,index,follow" />
    <meta name='revisit-after' content='1 days' />
    <title><?php echo $title; ?> || N One Store</title>
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
    <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" type="text/css" href="css/libs/settings.css" />
    <link rel="stylesheet" type="text/css" href="css/theme.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/header/style.css" />
</head>

<body>
    <div class="page-wrapper wrap chiller-theme">
        <?php
        include './header.php';
        ?>
        <!-- End Header -->
        <div id="content">
            <div class="content-shop">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3 col-sm-4 col-xs-12">
                            <div class="sidebar-shop sidebar-left">
                                <div class="widget widget-filter">
                                    <div class="box-filter">
                                        <h2 class="widget-title">Categories</h2>
                                        <ul>
                                            <?php
                                            foreach (ProductCategories::all() as $category) {

                                                $COUNT_PRODUCT = count(Product::getProductsByCategory($category['id']));
                                            ?>
                                                <li>
                                                    <input type="checkbox" class="common_selector category" value="<?php echo $category['id'] ?>">
                                                    <?php echo $category['name'] ?> (<?php echo $COUNT_PRODUCT ?>)
                                                </li>
                                            <?php
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                    <!-- End Category -->
                                    <div class="box-filter price-filter">
                                        <h2 class="widget-title">Brand</h2>
                                        <div class="inner-price-filter">
                                            <ul>
                                                <?php
                                                foreach (Brand::all() as $filter_brand) {
                                                    $COUNT_PRODUCT = count(Product::getProductsByBrand($filter_brand['id']));
                                                ?>
                                                    <li>
                                                        <input type="checkbox" class="common_selector brand" value="<?php echo $filter_brand['id']; ?>">
                                                        <?php echo $filter_brand['name']; ?> (<?php echo $COUNT_PRODUCT ?>)
                                                    </li>
                                                <?php }
                                                ?>
                                            </ul>
                                        </div>

                                    </div>

                                    <!-- End Price -->
                                    <div class="box-filter color-filter">
                                        <h2 class="widget-title">Price Filter</h2>
                                        <input type="hidden" id="hidden_minimum_price" value="0">
                                        <input type="hidden" id="hidden_maximum_price" id="max-price">
                                        <input type="hidden" id="pagelimit" value="<?php echo $pagelimit ?>">
                                        <input type="hidden" id="page" value="<?php echo $page; ?>">
                                        <input type="hidden" id="setlimit" value="<?php echo $setlimit ?>">
                                        <p id="price_show"><span id="min-price"> </span>- <span id="max-price"></span></p>
                                        <div id="price_range"></div>

                                    </div>
                                </div>
                                <!-- End Filter -->
                            </div>
                            <!-- End Sidebar Shop -->
                        </div>
                        <div class="col-md-9 col-sm-8 col-xs-12">
                            <div class="main-content-shop">
                                <div class="upsell-detail">
                                    <div class="upsell-detail-slider filter_data">
                                        <?php
                                        foreach ($products as $product) {
                                        ?>
                                            <div class="col-md-3 col-sm-4 col-xs-6">
                                                <div class="item-product">
                                                    <div class="product-thumb">
                                                        <a class="product-thumb-link" href="#">
                                                            <img class="first-thumb" alt="" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>">
                                                            <img class="second-thumb" alt="" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>">
                                                        </a>
                                                        <div class="product-info-cart">
                                                            <a class="addcart-link" href="#"><i class="fa fa-shopping-cart"></i> Add to Cart</a>
                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="title-product">
                                                            <a href="view-product.php?id=<?php echo $product['id']; ?>" title="<?php echo $product['name']; ?>">
                                                                <?php
                                                                if (strlen($product['name']) > 30) {
                                                                    echo substr($product['name'], 0, 28) . '...';
                                                                } else {
                                                                    echo $product['name'];
                                                                }
                                                                ?>
                                                            </a>
                                                        </h3>
                                                        <div class="info-price">
                                                            <?php
                                                            if ($product['discount'] == 0) {
                                                            ?>
                                                                <span>Rs. <?php echo number_format($product['price'], 2); ?></span>
                                                            <?php
                                                            } else {
                                                                $discount = $product['price'] * $product['discount'] / 100;
                                                                $price = $product['price'] - $discount;
                                                            ?>
                                                                <span>Rs. <?php echo number_format($price, 2); ?></span><del>Rs. <?php echo number_format($product['price'], 2); ?></del>
                                                            <?php
                                                            }
                                                            ?>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        <?php
                                        }
                                        ?>
                                    </div>
                                    <div class="row col-md-12">
                                        <div class="" id="show_pagination">
                                        </div>
                                    </div>
                                </div>
                                <!-- End Upsell Detail -->
                            </div>
                            <!-- End Main Content Shop -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Content Shop -->
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
    <script src="control-panel/plugins/sweetalert/sweetalert.min.js" type="text/javascript"></script>
    <script src="js/header.js" type="text/javascript"></script>
    <script src="js/add-to-cart.js" type="text/javascript"></script>
    <script src="js/product.js" type="text/javascript"></script>
    <script src="js/login.js" type="text/javascript"></script>
    <script src="js/header/custom.js" type="text/javascript"></script>
</body>

</html>