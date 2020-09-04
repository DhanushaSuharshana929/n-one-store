<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
?>
<html>

<head>

    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,700' rel='stylesheet'>
    <link rel="stylesheet" type="text/css" href="css/libs/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/bootstrap.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/bootstrap-theme.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/jquery.fancybox.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/jquery-ui.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/owl.carousel.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/owl.transitions.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/owl.theme.css" />
    <link rel="stylesheet" type="text/css" href="css/libs/query.mCustomScrollbar.html" />
    <link rel="stylesheet" type="text/css" href="css/libs/settings.css" />
    <link rel="stylesheet" type="text/css" href="css/theme.css" media="all" />
    <link rel="stylesheet" type="text/css" href="css/responsive.css" media="all" />
    <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css" />
    <link href="css/login-css.css" rel="stylesheet" type="text/css" />
    <link href="css/modle-login.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="css/header/framework7.css">
    <link rel="stylesheet" href="css/header/style.css">
</head>

<body>
    <div class="wrap">
        <?php
        include './header1.php';
        ?>
        <?php
        include './mobile-header-nav.php';
        ?>

        <div class="views">
            <div class="view view-main">
                <div class="pages">
                    <div data-page="index" class="page homepage">
                        <div class="page-content">
                            <?php
                            include './mobile-header.php';
                            ?>
                            <!-- ------------------------------------------------------------ -->

                            <div id="content">
                                <div class="banner-slider">
                                    <div class="rev-slider">
                                        <ul>
                                            <?php
                                            foreach (Slider::all() as $key => $slider) {
                                                $key = $key + 1;
                                            ?>
                                                <li class="slide<?php echo $key; ?>" data-transition="random">
                                                    <img src="upload/slider/<?php echo $slider['image_name']; ?>" alt="" />
                                                </li>
                                            <?php
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                </div>
                                <!-- End Banner Slider -->
                                <div class="list-tab-product">
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12 col-sm-12 col-xs-12">
                                                <div class="content-tab-product">
                                                    <div id="bestsale" class="">
                                                        <div class="product-tab-slider">
                                                            <div class="wrap-item" data-navigation="true" data-pagination="false" data-itemscustom="[[0,2],[560,4],[980,5],[1600,6]]">
                                                                <?php
                                                                foreach (Product::getFeaturedProducts() as $key => $product) {
                                                                    if ($key < 10) {
                                                                        $BRAND = new Brand($product['id']);
                                                                ?>
                                                                        <div class="item">
                                                                            <div class="item-category-featured-product">
                                                                                <div class="product-thumb">
                                                                                    <a href="view-product.php?id=<?php echo $product['id']; ?>" class="product-thumb-link">
                                                                                        <img class="first-thumb" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>" alt="" />
                                                                                        <img class="second-thumb" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>" alt="" />
                                                                                    </a>
                                                                                    <div class="product-info-cart">
                                                                                        <?php
                                                                                        if ($product['in_stock'] == 1) {
                                                                                        ?>
                                                                                            <a href="#" class="addcart-link view-pop-up8" data-toggle="modal" data-target="#modalLoginForm8_<?php echo $product['id']; ?>" id="" pro-id="<?php echo $product['id']; ?>"><i class="fa fa-shopping-basket"></i> Add to Cart</a>
                                                                                        <?php
                                                                                        } else {
                                                                                        ?>
                                                                                            <div class="addcart-link not-available-btn-hover"><i class="fa fa-shopping-basket"></i> Not in Stock</div>
                                                                                        <?php
                                                                                        }
                                                                                        ?>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="product-info">
                                                                                    <h3 class="title-product hidden-xs">
                                                                                        <a href="view-product.php?id=<?php echo $product['id']; ?>">
                                                                                            <?php
                                                                                            if (strlen($product['name']) > 25) {
                                                                                                echo substr($product['name'], 0, 22) . '...';
                                                                                            } else {
                                                                                                echo $product['name'];
                                                                                            }
                                                                                            ?>
                                                                                        </a>
                                                                                    </h3>
                                                                                    <h3 class="title-product visible-xs">
                                                                                        <a href="view-product.php?id=<?php echo $product['id']; ?>">
                                                                                            <?php
                                                                                            if (strlen($product['name']) > 40) {
                                                                                                echo substr($product['name'], 0, 38) . '...';
                                                                                            } else {
                                                                                                echo $product['name'];
                                                                                            }

                                                                                            ?>
                                                                                        </a>
                                                                                    </h3>
                                                                                    <div class="info-price">
                                                                                        <?php
                                                                                        if ($product['discount'] != 0) {
                                                                                            $price = $product['price'] - ($product['price'] * $product['discount'] / 100);
                                                                                        ?>
                                                                                            <span>Rs. <?php echo number_format($price, 2); ?></span>
                                                                                            <del>Rs. <?php echo number_format($product['price'], 2); ?></del>
                                                                                        <?php
                                                                                        } else {
                                                                                        ?>
                                                                                            <span>Rs. <?php echo number_format($product['price'], 2); ?></span>
                                                                                        <?php
                                                                                        }
                                                                                        ?>

                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="modal fade" id="modalLoginForm8_<?php echo $product['id']; ?>" role="dialog">
                                                                                <div class="modal-dialog">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header text-center">
                                                                                            <h4 class="modal-title w-100 font-weight-bold"><b><?php echo $product['name']; ?></b>
                                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                    <span aria-hidden="true">&times;</span>
                                                                                                </button>
                                                                                            </h4>
                                                                                        </div>

                                                                                        <div class="modal-body mx-3">
                                                                                            <div class="row">
                                                                                                <div class="col-md-4">
                                                                                                    <div class="thumbnail">
                                                                                                        <img class="first-thumb" alt="" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-8">
                                                                                                    <p class="text-justify"><?php echo $product['short_description']; ?></p>
                                                                                                    <span pull-left> <i class="fa fa-circle"></i> Brand : <?php echo $BRAND->name; ?> </span> </br>
                                                                                                    <span pull-right> <i class="fa fa-circle"></i> Unit : <?php echo $product['unite']; ?> </span></br>
                                                                                                    <span pull-right=""> <i class="fa fa-circle"></i> Order Limit : Minimum <?php echo $product['min_qty']; ?> & Maximum <?php echo $product['max_qty']; ?> </span><br>
                                                                                                    <div class="col-md-6  " id="price-padd">
                                                                                                        <?php
                                                                                                        if ($product['discount'] != 0) {
                                                                                                            $price1 = $product['price'] - ($product['price'] * $product['discount'] / 100);
                                                                                                        } else {
                                                                                                            $price1 = $product['price'];
                                                                                                        }
                                                                                                        ?>
                                                                                                        <label>Rs :</label> <span id="price-format-design"> <?php echo number_format($price1, 2); ?> </span>

                                                                                                        <input type="hidden" id="price<?php echo $product['id']; ?>" class="price-format total_price_amount" value="<?php echo $price1; ?>" />
                                                                                                    </div>
                                                                                                    <div class="col-md-6 " id="price-padd">
                                                                                                        <div class="attr-product">
                                                                                                            <div class="input-group">
                                                                                                                <input type="number" name="quantity" min="<?php echo $product['min_qty']; ?>" max="<?php echo $product['max_qty']; ?>" step="<?php echo $product['min_qty']; ?>" id="quantity8<?php echo $product['id']; ?>" class=" form-control form-input-design" value="1" />
                                                                                                            </div>

                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="modal-footer d-flex justify-content-center">
                                                                                            <input type="hidden" class="form-control  " id="product_id" value="<?php echo $product['id']; ?>" />
                                                                                            <input type="hidden" name="name" id="name<?php echo $product['id']; ?>" value="<?php echo $product['name']; ?>" />
                                                                                            <input type="button" class="btn btn-info add_to_cart8" name="add_to_cart" id="<?php echo $product['id']; ?>" min-qty="<?php echo $product['min_qty']; ?>" max-qty="<?php echo $product['max_qty']; ?>" value="Add to Cart" />
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                <?php
                                                                    }
                                                                }
                                                                ?>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!-- End Content Tab -->
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- End List Tab Product -->
                                <div class="main-content-home p-b-0">
                                    <div class="container">
                                        <?php
                                        foreach (ProductCategories::all() as $key => $category) {
                                            $products = Product::getProductsByCategory($category['id']);
                                            if ($key < 5) {
                                                if (count($products) > 0) {
                                        ?>
                                                    <h2 class="title-category hidden-xl hidden-lg hidden-md hidden-sm"><?php echo $category['name']; ?></h2>
                                                    <div class="clearfix category-product-featured blue-box">

                                                        <div class="banner-home-category">
                                                            <div class="item-adv-simple">
                                                                <a href="view-sub-categories.php?id=<?php echo $category['id']; ?>"><img src="upload/product-categories/banner/<?php echo $category['banner']; ?>" alt="" /></a>
                                                            </div>
                                                        </div>
                                                        <div class="featured-product-category">
                                                            <div class="wrap-item" data-pagination="false" data-navigation="true" data-itemscustom="[[0,2],[480,2],[768,2],[992,4],[1200,4]]">
                                                                <?php
                                                                foreach ($products as $key => $product) {
                                                                    if ($key < 8) {
                                                                        $BRAND = new Brand($product['id']);
                                                                ?>
                                                                        <div class="item">
                                                                            <div class="item-category-featured-product">
                                                                                <div class="product-thumb">
                                                                                    <a href="view-product.php?id=<?php echo $product['id']; ?>" class="product-thumb-link">
                                                                                        <img class="first-thumb" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>" alt="" />
                                                                                        <img class="second-thumb" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>" alt="" />
                                                                                    </a>
                                                                                    <div class="product-info-cart">
                                                                                        <?php
                                                                                        if ($product['in_stock'] == 1) {
                                                                                        ?>
                                                                                            <a href="#" class="addcart-link view-pop-up" data-toggle="modal" data-target="#modalLoginForm<?php echo $product['id']; ?>" id="" pro-id="<?php echo $product['id']; ?>"><i class="fa fa-shopping-basket"></i> Add to Cart</a>
                                                                                        <?php
                                                                                        } else {
                                                                                        ?>
                                                                                            <div class="addcart-link not-available-btn-hover"><i class="fa fa-shopping-basket"></i> Not in Stock</div>
                                                                                        <?php
                                                                                        }
                                                                                        ?>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="product-info">
                                                                                    <h3 class="title-product hidden-xs">
                                                                                        <a href="view-product.php?id=<?php echo $product['id']; ?>">
                                                                                            <?php
                                                                                            if (strlen($product['name']) > 27) {
                                                                                                echo substr($product['name'], 0, 25) . '...';
                                                                                            } else {
                                                                                                echo $product['name'];
                                                                                            }
                                                                                            ?>
                                                                                        </a>
                                                                                    </h3>
                                                                                    <h3 class="title-product visible-xs">
                                                                                        <a href="view-product.php?id=<?php echo $product['id']; ?>">
                                                                                            <?php
                                                                                            if (strlen($product['name']) > 40) {
                                                                                                echo substr($product['name'], 0, 38) . '...';
                                                                                            } else {
                                                                                                echo $product['name'];
                                                                                            }
                                                                                            ?>
                                                                                        </a>
                                                                                    </h3>
                                                                                    <div class="info-price">
                                                                                        <?php
                                                                                        if ($product['discount'] != 0) {
                                                                                            $price = $product['price'] - ($product['price'] * $product['discount'] / 100);
                                                                                        ?>
                                                                                            <span>Rs. <?php echo number_format($price, 2); ?></span>
                                                                                            <del>Rs. <?php echo number_format($product['price'], 2); ?></del>
                                                                                        <?php
                                                                                        } else {
                                                                                        ?>
                                                                                            <span>Rs. <?php echo number_format($product['price'], 2); ?></span>
                                                                                        <?php
                                                                                        }
                                                                                        ?>

                                                                                    </div>

                                                                                </div>
                                                                            </div>
                                                                            <div class="modal fade" id="modalLoginForm<?php echo $product['id']; ?>" role="dialog">
                                                                                <div class="modal-dialog">
                                                                                    <div class="modal-content">
                                                                                        <div class="modal-header text-center">
                                                                                            <h4 class="modal-title w-100 font-weight-bold"><b><?php echo $product['name']; ?></b>
                                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                    <span aria-hidden="true">&times;</span>
                                                                                                </button>
                                                                                            </h4>
                                                                                        </div>

                                                                                        <div class="modal-body mx-3">
                                                                                            <div class="row">
                                                                                                <div class="col-md-4">
                                                                                                    <div class="thumbnail">
                                                                                                        <img class="first-thumb" alt="" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>">
                                                                                                    </div>
                                                                                                </div>
                                                                                                <div class="col-md-8">
                                                                                                    <p class="text-justify"><?php echo $product['short_description']; ?></p>
                                                                                                    <span pull-left> <i class="fa fa-circle"></i> Brand : <?php echo $BRAND->name; ?> </span> </br>
                                                                                                    <span pull-right> <i class="fa fa-circle"></i> Unit : <?php echo $product['unite']; ?> </span></br>
                                                                                                    <span pull-right=""> <i class="fa fa-circle"></i> Order Limit : Minimum <?php echo $product['min_qty']; ?> & Maximum <?php echo $product['max_qty']; ?> </span><br>
                                                                                                    <div class="col-md-6  " id="price-padd">
                                                                                                        <?php
                                                                                                        if ($product['discount'] != 0) {
                                                                                                            $price1 = $product['price'] - ($product['price'] * $product['discount'] / 100);
                                                                                                        } else {
                                                                                                            $price1 = $product['price'];
                                                                                                        }
                                                                                                        ?>
                                                                                                        <label>Rs :</label> <span id="price-format-design"> <?php echo number_format($price1, 2); ?> </span>

                                                                                                        <input type="hidden" id="price<?php echo $product['id']; ?>" class="price-format total_price_amount" value="<?php echo $price1; ?>" />
                                                                                                    </div>
                                                                                                    <div class="col-md-6 " id="price-padd">
                                                                                                        <div class="attr-product">
                                                                                                            <div class="input-group">
                                                                                                                <input type="number" name="quantity" min="<?php echo $product['min_qty']; ?>" max="<?php echo $product['max_qty']; ?>" step="<?php echo $product['min_qty']; ?>" id="quantity<?php echo $product['id']; ?>" class=" form-control form-input-design" value="1" />
                                                                                                            </div>

                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>

                                                                                        <div class="modal-footer d-flex justify-content-center">
                                                                                            <input type="hidden" class="form-control  " id="product_id" value="<?php echo $product['id']; ?>" />
                                                                                            <input type="hidden" name="name" id="name<?php echo $product['id']; ?>" value="<?php echo $product['name']; ?>" />
                                                                                            <input type="button" class="btn btn-info add_to_cart" name="add_to_cart" id="<?php echo $product['id']; ?>" min-qty="<?php echo $product['min_qty']; ?>" max-qty="<?php echo $product['max_qty']; ?>" value="Add to Cart" />
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                <?php
                                                                    }
                                                                }
                                                                ?>
                                                                <!-- End Item -->
                                                            </div>
                                                        </div>
                                                    </div>
                                        <?php
                                                }
                                            }
                                        }
                                        ?>
                                        <!-- End Blue Box -->
                                        <!-- End List Tab Product -->
                                    </div>
                                </div>
                                <!-- End Main Content Home -->
                                <div class="main-content-home">

                                    <div class="container">
                                        <h2 class="title-shop-page">What Customer Say</h2>
                                        <div class="page-testimonial">
                                            <div class="testimonial-slider1">
                                                <div class="col-md-8 col-sm-12 col-xs-12 col-md-offset-2">
                                                    <div class="wrap-item" data-navigation="true" data-autoplay="true" data-pagination="false" data-itemscustom="[[0,1],[600,1],[980,1]]">
                                                        <?php
                                                        foreach (Comments::all() as $comment) {
                                                        ?>
                                                            <div class="item">
                                                                <div class="item-customer-saying">

                                                                    <div class="info-customer-saying">
                                                                        <p class="desc"><?php echo $comment['comment']; ?></p>
                                                                        <div class="test-img"><img src="upload/comments/<?php echo $comment['image_name']; ?>" alt="" />
                                                                        </div>
                                                                        <h3><a href=""><?php echo $comment['name']; ?></a></h3>
                                                                        <span><?php echo $comment['title']; ?></span>
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
                                        <!-- End Testimonial -->
                                    </div>
                                </div>
                            </div>
                            <!-- End Content -->
                            <?php include './footer.php'; ?>
                            <!-- End Footer -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/libs/jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="js/libs/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/libs/jquery.fancybox.js"></script>
    <script type="text/javascript" src="js/libs/jquery-ui.js"></script>
    <script type="text/javascript" src="js/libs/owl.carousel.js"></script>
    <script type="text/javascript" src="js/libs/TimeCircles.js"></script>
    <script type="text/javascript" src="js/libs/jquery.countdown.js"></script>
    <script type="text/javascript" src="js/libs/jquery.bxslider.min.js"></script>
    <script type="text/javascript" src="js/libs/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="js/libs/jquery.themepunch.revolution.js"></script>
    <script type="text/javascript" src="js/libs/jquery.themepunch.plugins.min.js"></script>
    <script src="control-panel/plugins/sweetalert/sweetalert.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="js/theme.js"></script>
    <script src="js/add-to-cart.js" type="text/javascript"></script>
    <script src="js/login.js" type="text/javascript"></script>
    <script src="js/header/test.js" type="text/javascript"></script>
    <script src="js/header/my-app.js" type="text/javascript"></script>
</body>

</html>