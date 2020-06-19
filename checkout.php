<!DOCTYPE HTML>
<?php
include './class/include.php';
if (!isset($_SESSION)) {
    session_start();
} 
$disabled = '';
if (!isset($_SESSION["shopping_cart"])) {
    $disabled = 'disabled';
}
$CUSTOMER = new Customer($_SESSION['id']);
$CITY = new City($CUSTOMER->city);
$DISTRICT = new District($CUSTOMER->district);

$LASTID = Order::getLastID();
$order_id = $LASTID + 1;

if (isset($_GET["order_id"])) {
    $ID = $_GET["order_id"];

    $paymentSatusCode = Order::getPaymentStatusCode($ID);
}
?>
<html lang="en-US">
    <head><meta http-equiv="Content-Type" content="text/html; charset=utf-8">

        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content="Super Shop is new Wordpress theme that we have designed to help you transform your store into a beautiful online showroom. This is a fully responsive Wordpress theme, with multiple versions for homepage and multiple templates for sub pages as well" />
        <meta name="keywords" content="Super Shop,7uptheme" />
        <meta name="robots" content="noodp,index,follow" />
        <meta name='revisit-after' content='1 days' />
        <link rel="icon" href="images/logo-favicon.png" type="images/logo-favicon.png">
        <title>Checkout || N One Store</title>
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
        <link href="plugins/country-code-selector/css/jquery.ccpicker.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/country-select/css/countrySelect.min.css" rel="stylesheet" type="text/css"/>
        <link href="plugins/country-code-selector/css/intlTelInput.min.css" rel="stylesheet" type="text/css"/>
        <style>
            .payment-images img {
                height: 60px;
                margin-left: -4px;
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body class="check-out-page">
        <div class="wrap">
            <?php include './header.php'; ?>
            <!-- End Content -->
            <div id="content">
                <div class="content-page woocommerce">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-10 col-sm-12 col-xs-12 col-md-offset-1">
                                <h2 class="title-shop-page">checkout</h2>
                                <!--                                <div class="row col-md-12 display-alert">
                                                                    <div class="alert alert-danger" role="alert">
                                                                        We are giving a rest to our workers, therefore no one will be available at call center till morning of 04 the April. <br />
                                                                        <b> You can place the order and you will receive the confirmation via email. </b><br />
                                                                        Sorry for the inconvenience caused.
                                                                    </div>
                                                                </div>-->
                                <div class="alert" id="beautypress-form-msg">
                                    <?php
                                    if (isset($_GET["order_id"])) {
                                        if ($paymentSatusCode == 2) {
                                            unset($_SESSION["shopping_cart"]);
                                            ?>
                                            <div class="alert alert-success alert-dismissible">
                                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                <strong>Success!</strong> Your Payment has been succeeded.
                                            </div>
                                            <?php
                                        } else {
                                            ?>
                                            <div class="alert alert-danger alert-dismissible">
                                                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                                                <strong>Error!</strong> Your Payment was not successful. Please do your reservation again.
                                            </div>
                                            <?php
                                        }
                                    }
                                    ?>
                                </div>
                                <!-- <form method="post" action="https://www.payhere.lk/pay/checkout" name="contact-from" id="payments" class="booking-form">  -->
                                <form method="post" action="https://sandbox.payhere.lk/pay/checkout" name="contact-from" id="payments" class="booking-form"> 
                                    <div class="row">
                                        <div class="col-md-6 col-sm-6 col-ms-12">
                                            <div class="check-billing">
                                                <div class="form-my-account">
                                                    <h2 class="title">Delivery Details</h2>
                                                    <p><input type="tel" name="contact_no_1" id="txtContactNo" placeholder="Contact Number *" class="phone-field" value="<?php echo $CUSTOMER->phone_number; ?>" /></p>
                                                    <p><input type="text" name="contact_no_2" id="txtContactNo2" placeholder="Additional Contact Number" class="phone-field" value="" /></p>
                                                    <p><input type="text" name="address" id="txtAddress" placeholder="Address *" value="<?php echo $CUSTOMER->address; ?>"/></p>
                                                    <p><select name="district" id="checkout-district">
                                                            <option>--Select District--</option>
                                                            <?php
                                                            foreach (District::all() as $district) {
                                                                if ($district['id'] == $CUSTOMER->district) {
                                                                    ?>
                                                                    <option value="<?php echo $district['id']; ?>" selected dis-name="<?php echo $district['name']; ?>"><?php echo $district['name']; ?></option>
                                                                    <?php
                                                                } else {
                                                                    ?>
                                                                    <option value="<?php echo $district['id']; ?>" dis-name="<?php echo $district['name']; ?>"><?php echo $district['name']; ?></option>
                                                                    <?php
                                                                }
                                                            }
                                                            ?>
                                                        </select>
                                                    </p>
                                                    <p><select name="city" id="checkout-city">
                                                            <option>--Select City--</option>
                                                            <?php
                                                            foreach (City::GetCitiesByDistrict($CUSTOMER->district) as $city) {
                                                                if ($city['id'] == $CUSTOMER->city) {
                                                                    ?>
                                                                    <option value="<?php echo $city['id']; ?>" selected city-name="<?php echo $city['name']; ?>"><?php echo $city['name']; ?></option>
                                                                    <?php
                                                                } else {
                                                                    ?>
                                                                    <option value="<?php echo $city['id']; ?>" city-name="<?php echo $city['name']; ?>"><?php echo $city['name']; ?></option>
                                                                    <?php
                                                                }
                                                            }
                                                            ?>
                                                        </select>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-sm-6 col-ms-12">
                                            <div class="check-address">
                                                <div class="form-my-account">
                                                    <p>
                                                        <textarea cols="30" rows="14" id="txtOrderNote" name="txtOrderNote" placeholder="Order Notes"></textarea>
                                                    </p>
                                                </div>
                                            </div>		
                                        </div>
                                    </div>
                                    <h3 class="order_review_heading">Your order</h3>
                                    <div class="woocommerce-checkout-review-order" id="order_review">
                                        <div class="table-responsive">
                                            <table class="shop_table woocommerce-checkout-review-order-table">
                                                <thead>
                                                    <tr>
                                                        <th class="product-name">Product</th>
                                                        <th class="product-total">Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <?php
                                                    $tot = 0;
                                                    $items = '';
                                                    if (isset($_SESSION["shopping_cart"])) {
                                                        foreach ($_SESSION["shopping_cart"] as $product) {

                                                            $PRODUCT = new Product($product['product_id']);
                                                            $price = $product['product_quantity'] * $product['product_price'];
                                                            $tot += $price;
                                                            if (empty($items)) {
                                                                $items .= $PRODUCT->name;
                                                            } else {
                                                                $items .= ', ' . $PRODUCT->name;
                                                            }
                                                            ?>
                                                            <tr class="cart_item">
                                                                <td class="product-name">

                                                                    <?php echo $PRODUCT->name; ?>&nbsp; <span class="product-quantity">× <?php echo $product['product_quantity']; ?></span>
                                                                </td>
                                                                <td class="product-total text-right">
                                                                    <span class="amount">Rs. <?php echo number_format($price, 2); ?></span>						
                                                                </td>
                                                            </tr>

                                                            <?php
                                                        }
                                                    } else {
                                                        ?>
                                                        <tr class="cart_item">
                                                            <td colspan="2">Your cart is empty.</td>
                                                        </tr>
                                                        <?php
                                                    }
                                                    ?>
                                                </tbody>
                                                <tfoot>
                                                    <tr class="order-total">
                                                        <th>Total</th>
                                                        <td class="text-right"><strong><span class="amount">Rs. <?php echo number_format($tot, 2); ?></span></strong> </td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                            <table class="shop_table woocommerce-checkout-review-order-table">
                                                <thead>
                                                    <tr>
                                                        <th class="product-name">Service</th>
                                                        <th class="product-total">Total</th>
                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <tr class="cart_item">
                                                        <td class="product-name">
                                                            Delivery Charges
                                                        </td>
                                                        <td class="product-total text-right">
                                                            Rs 150.00						
                                                        </td>
                                                    </tr>
                                                    <!-- <tr class="cart_item">
                                                        <td class="product-name">
                                                            Online Transaction Processing Fee(3%) 
                                                        </td>
                                                        <td class="product-total text-right">
                                                            <?php
                                                            // $processing_fee = ($tot +150);
                                                            // echo 'Rs. ' . number_format($processing_fee, 2);
                                                            ?>					
                                                        </td>
                                                    </tr> -->

                                                </tbody>
                                                <tfoot>
                                                    <tr class="order-total">
                                                        <?php
                                                        $grand_total = $tot + 150;
                                                        ?>	
                                                        <th>Grand Total</th>
                                                        <td class="text-right"><strong><span class="amount">Rs. <?php echo number_format($grand_total, 2); ?></span></strong> </td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                        <div class="terms-container">
                                            <div  class="condition-title">Please be kindly noted that</div>
                                            <ul>
                                                <li class="modle-li">
                                                    - Deliveries will be processed within 4 days (may take up to 7 days if delayed)
                                                </li>
                                                <li class="modle-li">
                                                    - If in case the stocks are not available or getting delayed the payment will be fully refunded
                                                </li>
                                                <li class="modle-li">
                                                    - In case if the service will have to be suspended due to government-imposed laws in the later stage, the payments will be fully refunded
                                                </li>
                                                <li class="modle-li">
                                                    - The delivery address must comply with the province, district and the city you entered on creating the account
                                                </li>
                                            </ul>
                                        </div>

                                        <div class="row">
                                            <div class="col-xs-12 agree-check-box">
                                                <label class="checkbox-container">Click here to indicate that you have read and agree to the booking 
                                                    <a href="terms-and-conditions.php" target="_blank" class="text-blue">terms and conditions</a>.
                                                    <input type="checkbox" name="agree" id="agree"><span class="checkmark">
                                                    </span>
                                                </label>
                                            </div>
                                        </div>
                                        <!--                                        <div class="row col-md-12 payment-images">
                                                                                    <img src="images/payment-icon.png" alt=""/>
                                                                                </div>-->
                                        <div class="place-order-btn">
                                            <button data-value="Place order" type="submit" id="place_order" name="woocommerce_checkout_place_order" class="button alt <?php echo $disabled; ?>" <?php echo $disabled; ?>  prod-total="<?php echo $tot; ?>">Place order</button>

                                        </div>


                                        <!-- <input type="hidden" name="merchant_id" value="214743">  Live Merchant ID -->
                                        <input type="hidden" name="merchant_id" value="1213021">  <!-- Sandbox Merchant ID-->
                                        <input type="hidden" name="return_url" value="http://www.nonestore.lk/checkout.php">
                                        <input type="hidden" name="cancel_url" value="http://www.nonestore.lk/checkout?cancel">
                                        <input type="hidden" name="notify_url" value="http://www.nonestore.lk/payments/notify.php">  

                                        <input type="hidden" name="order_id" id="current_order_id" value="">
                                        <input type="hidden" name="items" value="<?php echo $items ?>">
                                        <input type="hidden" name="currency" value="LKR">
                                        <input type="hidden" id="member" value="<?php echo $_SESSION['id']; ?>">
                                        <input name="amount" id="total_amount" type="hidden" value="<?php echo $grand_total; ?>" class="payment"> 

                                        <input type="hidden" name="first_name" value="<?php echo $CUSTOMER->name; ?>">
                                        <input type="hidden" name="last_name" value="<?php echo $CUSTOMER->name; ?>">
                                        <input type="hidden" name="email" value="<?php echo $CUSTOMER->email; ?>">
                                        
                                        <input type="hidden" id="txtDistrict"  value="<?php echo $DISTRICT->name; ?>">
                                        <input type="hidden" id="txtCity" value="<?php echo $CITY->name; ?>">
                                        <input type="hidden" id="txtCountry" name="country" value="Sri Lanka">

                                        

                                        <!-- Modal -->
                                        <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                                            <div class="modal-dialog modal-dialog-centered" role="document">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h5 class="modal-title" id="exampleModalLongTitle">Please be kindly noted that</h5>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">&times;</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">




                                                    </div>
                                                    <div class="modal-footer">
                                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                        <button type="button" class="btn btn-primary" id="modle-proceed">Ok , Proceed</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>	
            </div>
            <!-- End Content Page -->

            <?php include './footer.php'; ?>
            <!-- End Footer -->
        </div>
        <!--<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha384-nvAa0+6Qg9clwYCGGPpDQLVpLNn0fRaROjHqs13t4Ggj3Ez50XnGQqc/r8MhnRDZ" crossorigin="anonymous"></script>-->
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
        <script src="js/order.js" type="text/javascript"></script>
        <script src="js/cart-form.js" type="text/javascript"></script>
        <script src="js/add-to-cart.js" type="text/javascript"></script>
        <script src="js/login.js" type="text/javascript"></script>
        <script src="js/city.js" type="text/javascript"></script>
        <script src="js/header.js" type="text/javascript"></script>
        <!--<script src="plugins/country-select/js/countrySelect.min.js" type="text/javascript"></script>-->
        <script src="plugins/country-code-selector/js/intlTelInput.min.js" type="text/javascript"></script>
        <script src="plugins/country-code-selector/js/intlTelInput-jquery.min.js" type="text/javascript"></script>

 <script>
    var input = document.querySelector("#txtContactNo");
    window.intlTelInput(input, {
      // allowDropdown: false,
      // autoHideDialCode: false,
      // autoPlaceholder: "off",
      // dropdownContainer: document.body,
      // excludeCountries: ["us"],
      // formatOnDisplay: false,
      // geoIpLookup: function(callback) {
      //   $.get("http://ipinfo.io", function() {}, "jsonp").always(function(resp) {
      //     var countryCode = (resp && resp.country) ? resp.country : "";
      //     callback(countryCode);
      //   });
      // },
      // hiddenInput: "full_number",
      // initialCountry: "auto",
      // localizedCountries: { 'de': 'Deutschland' },
      // nationalMode: false,
      // onlyCountries: ['us', 'gb', 'ch', 'ca', 'do'],
      // placeholderNumberType: "MOBILE",
      // preferredCountries: ['cn', 'jp'],
      // separateDialCode: true,
      utilsScript: "country-code-selector/js/utils.js",
    });
  </script>
    </body>
</html>