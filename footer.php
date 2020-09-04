<a href="cart.php">
    <div class="cart-icon-xs visible-xs">
        <span class="cart-badge cart-badge-xs">0</span>
    </div>
</a>
<div class="payment-details-section container">
    <div class="list-service2 payment-details">
        <div class="row">
            <div class="col-md-4 col-sm-4 col-xs-4 col-xs-pull-0">
                <div class="item-service2">
                    <div class="service-thumb2 col-xs-12">
                        <a href="#"><img src="images/home2/od3.png" alt=""></a>
                    </div>
                    <div class="service-info2 col-xs-12">
                        <h2>Delivery in Colombo</h2>
                        <span>Same Day Delivery is Available for Selected Products.</span>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 col-xs-push-4">
                <div class="item-service2">
                    <div class="service-thumb2 col-xs-12">
                        <a href="#"><img src="images/home2/od2.png" alt=""></a>
                    </div>
                    <div class="service-info2 col-xs-12">
                        <h2>Multiple Payment Options</h2>
                        <span>Credit Cards, Debit Cards, Bank Transfer</span>
                    </div>
                </div>
            </div>
            <div class="col-md-4 col-sm-4 col-xs-4 col-xs-pull-4">
                <div class="item-service2">
                    <div class="service-thumb2 col-xs-12">
                        <a href="#"><img src="images/home2/od4.png" alt=""></a>
                    </div>
                    <div class="service-info2 service-info2-1 col-xs-12">
                        <h2>Secured Payments</h2>
                        <span>Visa/ MasterCard/ American Express/ Discover/ Diners Club/ Ez Cash/ Genie/ M Cash/ Frimi</span>
                    </div>
                </div>
            </div>


        </div>
    </div>
    <!-- End List Service -->
</div>
<div id="footer">
    <div class="footer footer-home">
        <div class="container">
            <div class="footer-top">
                <div class="logo-footer">
                    <a href="#"><img src="images/logo/logo.png" alt="" /></a>
                </div>
                <div class="menu-footer">
                    <ul>
                        <li><a href="view-products.php">Buy</a></li>
                        <li><a href="offers.php">All Promotions</a></li>
                        <li><a href="member/profile.php">My Orders </a></li>
                        <li><a href="customer-feedback.php">Customer Feedback</a></li>
                        <li><a href="terms-and-conditions.php">Terms & COnditions</a></li>
                        <li><a href="about-us.php">About </a></li>
                        <li><a href="contact-us.php">Contact</a></li>
                    </ul>
                </div>
            </div>
            <div class="list-footer-box">
                <div class="row">
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box">
                            <h2>Category</h2>
                            <ul class="footer-menu-box">
                                <?php
                                foreach (ProductCategories::all() as $key => $cat) {
                                    if ($key < 4) {
                                ?>
                                        <li><a href="view-sub-categories.php?id=<?php echo $cat['id']; ?>"><?php echo $cat['name']; ?></a></li>
                                <?php
                                    }
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box">
                            <h2>Brands</h2>
                            <ul class="footer-menu-box">
                                <?php
                                foreach (Brand::all() as $key => $brand) {
                                    if ($key < 4) {
                                ?>
                                        <li><a href="view-products-by-brand.php?id=<?php echo $brand['id']; ?>"><?php echo $brand['name']; ?></a></li>
                                <?php
                                    }
                                }
                                ?>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box">
                            <h2>My Account</h2>
                            <ul class="footer-menu-box">
                                <li><a href="member/profile.php">Profile</a></li>
                                <li><a href="member/profile.php">My Orders</a></li>
                                <li><a href="member/edit-profile.php">Edit Personal Info</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6 col-xs-12">
                        <div class="footer-box">
                            <h2>Contact Us</h2>
                            <ul class="footer-box-contact">
                                <li class="hidden"><i class="fa fa-home"></i> 563/16 Sarasavi Mawatha, Nawala road, Rajagiriya.</li>
                                <li><i class="fa fa-mobile"></i> +94 11 2883 717 / +94 76 7176 677</li>
                                <li><i class="fa fa-envelope"></i> <a href="mailto:info@nonestore.lk">info@nonestore.lk</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End List Footer Box -->
            <div class="footer-bottom">
                <div class="row">
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="copyright">
                            <p>© <?php echo date('Y'); ?> N one Store. All Rights Reserved. Designed by <a href="www.synotec.lk">Synotec Holdings (pvt) Ltd.</a></p>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-6 col-xs-12">
                        <div class="payment-method">
                            <a href="#"><img src="images/home1/s1.png" alt="" /></a>
                            <a href="#"><img src="images/home1/s2.png" alt="" /></a>
                            <a href="#"><img src="images/home1/s3.png" alt="" /></a>
                            <a href="#"><img src="images/home1/s4.png" alt="" /></a>
                            <a href="#"><img src="images/home1/s5.png" alt="" /></a>
                            <a href="#"><img src="images/home1/s6.png" alt="" /></a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- End Footer Bottom -->
        </div>
    </div>
</div>