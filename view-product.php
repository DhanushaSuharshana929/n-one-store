<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
$PRODUCT = new Product($_GET['id']);

$CAT = new ProductCategories($PRODUCT->category);
$discount1 = $PRODUCT->price * ($PRODUCT->discount / 100);
$price1 = $PRODUCT->price - $discount1;
?>
<html lang="en-US">

    <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="robots" content="noodp,index,follow" />
        <meta name='revisit-after' content='1 days' />
        <title><?php echo $PRODUCT->name; ?> || Products || N One Store</title>
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
        <link href="control-panel/plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="css/theme.css" media="all"/>
        <link rel="stylesheet" type="text/css" href="css/responsive.css" media="all"/>
    </head>
    <body>
        <div class="wrap">
            <?php
            include './header.php';
            ?>
            <!-- End Header -->
            <div id="content">
                <div class="content-shop">
                    <div class="container">
                        <div class="row view-product-section">
                            <div class="col-md-3 col-sm-4 col-xs-12 related-products">
                                <div class="sidebar-shop sidebar-left">
                                    <div class="widget widget-related-product">
                                        <h2 class="widget-title">RELATED PRODUCTS</h2>
                                        <ul class="list-product-related">
                                            <?php
                                            foreach (Product::getProductsByCategory($PRODUCT->category) as $key => $product) {
                                                if ($key < 5) {
                                                    if ($product['id'] != $PRODUCT->id) {
                                                        ?>
                                                        <li class="clearfix">
                                                            <div class="product-related-thumb">
                                                                <a href="view-product.php?id=<?php echo $product['id']; ?>"><img src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>" alt="" /></a>
                                                            </div>
                                                            <div class="product-related-info">
                                                                <h3 class="title-product"><a href="view-product.php?id=<?php echo $product['id']; ?>"><?php echo $product['name']; ?></a></h3>
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
                                                                        <del></del>
                                                                        <span>Rs. <?php echo number_format($price, 2); ?></span> <del>Rs. <?php echo number_format($product['price'], 2); ?></del>
                                                                        <?php
                                                                    }
                                                                    ?>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <?php
                                                    }
                                                }
                                            }
                                            ?>
                                        </ul>
                                    </div>
                                    <!-- End Related Product -->
                                </div>
                                <!-- End Sidebar Shop -->
                            </div>
                            <div class="col-md-9 col-sm-8 col-xs-12 product-details">
                                <div class="main-content-shop">
                                    <div class="main-detail">
                                        <div class="row">
                                            <div class="col-md-5 col-sm-12 col-xs-12">
                                                <div class="detail-gallery">
                                                    <div class="mid">
                                                        <img src="upload/product-categories/sub-category/product/photos/<?php echo $PRODUCT->image_name; ?>" alt=""/>
                                                        <p><i class="fa fa-search"></i> Mouse over to zoom in</p>
                                                    </div>
                                                    <div class="carousel">
                                                        <ul>
                                                            <li><a href="#" class="active"><img src="upload/product-categories/sub-category/product/photos/<?php echo $PRODUCT->image_name; ?>" alt=""/></a></li>
                                                        </ul>
                                                    </div>
                                                    <div class="gallery-control">
                                                        <a href="#" class="prev"><i class="fa fa-angle-left"></i></a>
                                                        <a href="#" class="next"><i class="fa fa-angle-right"></i></a>
                                                    </div>
                                                </div>
                                                <!-- End Gallery -->
                                            </div>
                                            <div class="col-md-7 col-sm-12 col-xs-12">
                                                <div class="detail-info">
                                                    <h2 class="title-detail"><?php echo $PRODUCT->name; ?></h2>
                                                    <hr/>  
                                                    <div class="product-code">
                                                        <?php
                                                        $CAT = new ProductCategories($PRODUCT->category);
                                                        ?>
                                                        <b>Category:</b> <label><?php echo $CAT->name; ?></label>
                                                    </div>
                                                    <div class="product-code">
                                                        <?php
                                                        $SUBCAT = new SubCategory($PRODUCT->sub_category);
                                                        ?>
                                                        <b>Sub Category:</b> <label><?php echo $SUBCAT->name; ?></label>
                                                    </div>
                                                    <div class="product-code">
                                                        <b>Item Code: </b> <span>#<?php echo 'C' . $PRODUCT->category . 'S' . $PRODUCT->sub_category . 'P' . $PRODUCT->id; ?></span>
                                                    </div> 
                                                    <div class="product-code">
                                                        <b>Availability: </b> 
                                                        <?php
                                                        if ($PRODUCT->in_stock == 1) {
                                                            echo '<span class="text-success">In stock</span>';
                                                        } else {
                                                            echo '<span class="text-danger">Not Available</span>';
                                                        }
                                                        ?>

                                                    </div>
                                                    <div class="product-code">
                                                        <b>Order Limit: </b> <span>Minimum <?php echo $PRODUCT->min_qty; ?> & Maximum  <?php echo $PRODUCT->max_qty; ?></span>
                                                    </div>  
                                                    <div class="product-code">
                                                        <b>Unit: </b> <span><?php echo $PRODUCT->unite; ?></span>
                                                    </div> 
                                                    <div class="info-price info-price-detail">
                                                        <label>Price:</label> 
                                                        <?php
                                                        if ($PRODUCT->discount == 0) {
                                                            ?>
                                                            <span>Rs. <?php echo number_format($PRODUCT->price, 2); ?></span>
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <span>Rs. <?php echo number_format($price1, 2); ?> </span><del>Rs. <?php echo number_format($PRODUCT->price, 2); ?></del>
                                                            <?php
                                                        }
                                                        ?>
                                                    </div>
                                                    <div class="attr-info">
                                                        <div class="attr-product">
                                                            <label>Qty</label>
                                                            <div class="info-qty">
                                                                <a class="qty-down" href="#" pro="<?php echo $PRODUCT->id; ?>"><i class="fa fa-minus"></i></a>
                                                                <span class="qty-val" id="quantity1<?php echo $PRODUCT->id; ?>">1</span>
                                                                <a class="qty-up" href="#" pro="<?php echo $PRODUCT->id; ?>"><i class="fa fa-plus"></i></a>
                                                                <input type="hidden" id="discount<?php echo $PRODUCT->id; ?>" value="<?php echo $PRODUCT->discount; ?>"/>
                                                                <input type="hidden" id="price<?php echo $PRODUCT->id; ?>" value="<?php echo $price1; ?>"/>
                                                                <input type="hidden" id="quantity<?php echo $PRODUCT->id; ?>" value="1"/>
                                                                <input   type="hidden" name="name"  id="name<?php echo $PRODUCT->id; ?>" value="<?php echo $PRODUCT->name; ?>" />
                                                            </div>
                                                        </div>
                                                        <?php
                                                        if ($PRODUCT->in_stock == 1) {
                                                            ?>
                                                            <div class="addcart-link add_to_cart" id="<?php echo $PRODUCT->id; ?>"  min-qty="<?php echo $PRODUCT->min_qty; ?>" max-qty="<?php echo $PRODUCT->max_qty; ?>"><i class="fa fa-shopping-cart"></i> Add to Cart</div>
                                                            <?php
                                                        } else {
                                                            ?>
                                                            <div class="addcart-link btn-not-in-stock" ><i class="fa fa-shopping-cart"></i> Not in Stock</div>
                                                            <?php
                                                        }
                                                        ?>

                                                    </div>
                                                    <!-- End Attr Info -->
                                                </div>
                                                <!-- Detail Info -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Main Detail -->
                                    <div class="tab-detail">
                                        <div class="title-tab-detail">
                                            <ul role="tablist">
                                                <li class="active"><a href="#details" data-toggle="tab">Product Details </a></li>
                                            </ul>
                                        </div>
                                        <div class="content-tab-detail">
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane active" id="details">
                                                    <div class="table-content-tab-detail">
                                                        <div class="icon-table-detail"></div>
                                                        <div class="info-table-detail">
                                                            <p><?php echo $PRODUCT->description; ?></p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- End Tab Detail -->
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
        <script src="js/login.js" type="text/javascript"></script>
    </body>

</html>