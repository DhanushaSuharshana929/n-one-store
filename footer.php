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
                                <li><i class="fa fa-home"></i> No. 55, Isipathanarama rd, Maharagama.</li>
                                <li><i class="fa fa-mobile"></i> +94 11 366 3500 </li>
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