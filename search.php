<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
}
$category1 = '';
$keyword = '';

if (isset($_GET['category'])) {
    $category1 = $_GET['category'];
}
if (isset($_GET['keyword'])) {
    $keyword = $_GET['keyword'];
}
if (isset($_GET["page"])) {
    $page = (int) $_GET["page"];
} else {
    $page = 1;
}
$setlimit = 20;

$pagelimit = ($page * $setlimit) - $setlimit;

$products = Product::search($category1, $keyword, $pagelimit, $setlimit);
?>
<html lang="en-US">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content="" />
        <meta name="keywords" content="" />
        <meta name="robots" content="noodp,index,follow" />
        <meta name='revisit-after' content='1 days' />
        <title>Products || N One Store</title>
        <link rel="icon" href="images/logo-favicon.png" type="images/logo-favicon.png">
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
            <div id="content" >
                <div class="content-shop" >
                    <div class="row"  >
                        <div class="container" >
                            <!--Append All Filter data in product filter _data class-->
                            <div class="col-md-12 col-sm-12 col-xs-12">
                                <div class="filter_data ">
                                    <ul class=" product-grid">
                                        <?php
                                        foreach ($products as $product) {
                                            $price = $product['price'] - ($product['price'] * $product['discount'] / 100);
                                            $BRAND = new Brand($product['brand']);
                                            ?>
                                            <li class="col-md-3 col-sm-4 col-xs-12">
                                                <div class="item-product">
                                                    <div class="product-thumb">
                                                        <a class="product-thumb-link" href="view-product.php?id=<?php echo $product['id']; ?>">
                                                            <img class="first-thumb" alt="" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>"> 
                                                            <img class="second-thumb" alt="" src="upload/product-categories/sub-category/product/photos/<?php echo $product['image_name']; ?>"> 
                                                        </a>
                                                        <div class="product-info-cart">
                                                            <?php
                                                            if ($product['in_stock'] == 1) {
                                                                ?>
                                                                <a class="addcart-link" href="#" data-toggle="modal" data-target="#modalLoginForm<?php echo $product['id']; ?>"><i class="fa fa-shopping-basket"></i> Add to Cart</a>
                                                                <?php
                                                            } else {
                                                                ?>
                                                                <a class="addcart-link not-available-btn-hover"  class="btn btn-default btn-rounded mb-4"><i class="fa fa-shopping-basket"></i> Not in Stock</a>
                                                                <?php
                                                            }
                                                            ?>

                                                        </div>
                                                    </div>
                                                    <div class="product-info">
                                                        <h3 class="title-product"><a href="view-product.php?id=<?php echo $product['id']; ?>" title="<?php echo $product['name']; ?>">
                                                                <?php
                                                                if (strlen($product['name']) > 28) {
                                                                    echo substr($product['name'], 0, 24) . '...';
                                                                } else {
                                                                    echo $product['name'];
                                                                }
                                                                ?>
                                                            </a></h3>
                                                        <div class="info-price"> <span id="price-format-design">Rs: <?php echo number_format($price, 2); ?></span><span class="unit-display">/<?php echo $product['unite']; ?></span>
                                                            <?php
                                                            if ($product['discount'] != 0) {
                                                                ?>
                                                                <del>Rs: <?php echo number_format($product['price'], 2); ?></del>
                                                                <?php
                                                            }
                                                            ?>
                                                        </div>
                                                        <?php
                                                        if ($product['discount'] != 0) {
                                                            ?>
                                                            <div class="percent-saleoff">
                                                                <span><label><?php echo $product['discount']; ?>%</label> OFF</span>
                                                            </div>
                                                            <?php
                                                        }
                                                        ?>


                                                    </div>
                                                </div>
                                            </li>
                                            <div class="modal fade" id="modalLoginForm<?php echo $product['id']; ?>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                                <div class="modal-dialog" role="document"> 
                                                    <div class="modal-content">
                                                        <div class="modal-header text-center">
                                                            <h4 class="modal-title w-100 font-weight-bold"><b><?php echo $product['name']; ?></b>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
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
                                                                    <span pull-left=""> <i class="fa fa-circle"></i> Brand : <?php echo $BRAND->name; ?> </span> <br>
                                                                    <span pull-right=""> <i class="fa fa-circle"></i> Unit : <?php echo $product['unite']; ?> </span><br>
                                                                    <span pull-right=""> <i class="fa fa-circle"></i> Order Limit : Minimum <?php echo $product['min_qty']; ?> & Maximum <?php echo $product['max_qty']; ?> </span><br>
                                                                    <div class="col-md-6  " id="price-padd">                                         
                                                                        <label>Rs :</label> <span id="price-format-design"> <?php echo number_format($price, 2); ?> </span>

                                                                        <input type="hidden" id="price<?php echo $product['id']; ?>" class="price-format total_price_amount" value="<?php echo $price; ?>">
                                                                    </div>                                        
                                                                    <div class="col-md-6 " id="price-padd">                                               
                                                                        <div class="attr-product">                                            
                                                                            <div class="input-group">                                             
                                                                                <input type="number" name="quantity"  min="<?php echo $product['min_qty']; ?>" max="<?php echo $product['max_qty']; ?>" step="1" id="quantity<?php echo $product['id']; ?>" class=" form-control form-input-design"  value="1">
                                                                            </div>
                                                                        </div>                                            
                                                                    </div>
                                                                </div>  
                                                            </div>  
                                                        </div>

                                                        <div class="modal-footer d-flex justify-content-center">  
                                                            <input type="hidden" class="form-control  " id="product_id" value="<?php echo $product['id']; ?>">
                                                            <input type="hidden" name="name" id="name<?php echo $product['id']; ?>" value="<?php echo $product['name']; ?>">
                                                            <input type="button" class="btn btn-info add_to_cart" name="add_to_cart" id="<?php echo $product['id']; ?>" min-qty="<?php echo $product['min_qty']; ?>" max-qty="<?php echo $product['max_qty']; ?>"value="   Add to Cart">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <?php
                                        }
                                        ?>
                                    </ul>
                                </div>


                                <!--Show Pagination Filter data-->
                                <div class="row">
                                    <div class="col-md-6 col-md-offset-3">
                                        <?php Product::showPaginationForSearch($category1, $keyword, $setlimit, $page); ?>
                                    </div>
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