<div id="header" class="hidden-xs">
  <div class="top-header">
    <div class="container">
      <div class="row">
        <div class="col-md-3 col-sm-6 col-xs-12">
          <ul class="top-info top-info-left">
            <li class="top-contact">
              <p><i class="fa fa-phone"></i> HotLine: +94 76 7176 677</p>
            </li>
          </ul>
        </div>
        <div class="col-md-9 col-sm-6 col-xs-12">
          <ul class="top-info top-info8">
            <li class="top-account has-child">


              <?php
              if (isset($_SESSION['id'])) {
                if ($_SESSION['image_name']) {
              ?>
                  <a href="#"><img src="upload/customer/profile/<?php echo $_SESSION['image_name']; ?>" class="img-circle" /><?php echo $_SESSION['name']; ?> </a>
                <?php
                } else {
                ?>
                  <a href="#"><img src="images/user.png" class="img-circle" /><?php echo $_SESSION['name']; ?>
                  </a>
                <?php
                }
                ?>
                <ul class="sub-menu-top">
                  <li><a href="member/profile.php"><i class="fa fa-user"></i> Profile</a></li>
                  <li><a href="post-and-get/logout.php"><i class="fa fa-lock"></i> Log Out</a></li>
                </ul>
              <?php
              } else {
              ?>
                <a href="#">My Account</a>
                <ul class="sub-menu-top">
                  <li><a href="#myModal" class="trigger-btn" data-toggle="modal"><i class="fa fa-unlock-alt"></i> Sign in</a></li>
                  <li><a href="registration.php"><i class="fa fa-list-alt"></i> Sign Up</a></li>
                </ul>
              <?php
              }
              ?>

            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <!-- End Top Header -->
  <div class="header">
    <div class="header-main">
      <div class="container">
        <div class="row">
          <div class="col-md-3 col-sm-3 col-xs-12">
            <div class="logo logo5 main-logo">
              <h1 class="hidden">N One Store</h1>
              <a href="./"><img src="images/logo/logo.png" alt=""></a>
            </div>
          </div>
          <div class="col-md-7 col-sm-6 col-xs-12">
            <div class="smart-search search-form4">
              <form action="search.php" method="get">
                <div class="select-category">
                  <select name="category" class="category-toggle-link">
                    <option value="">All</option>
                    <?php
                    foreach (ProductCategories::all() as $category) {
                    ?>
                      <option value="<?php echo $category['id']; ?>"><?php echo $category['name']; ?>
                      </option>
                    <?php
                    }
                    ?>
                  </select>
                </div>
                <div class="smart-search-form">
                  <input type="text" name="keyword" placeholder="Type Here...." />
                  <input type="submit" value="search" name="search" />
                </div>
              </form>
            </div>
          </div>
          <div class="col-md-2 col-sm-3 col-xs-12 hidden-xs">
            <div class="mini-cart mini-cart5">
              <a href="cart.php" class="header-mini-cart">
                <span class="total-mini-cart-item"><span class="cart-badge">0</span> Item(s) - </span>
                <span class="total-mini-cart-price">Rs. 0.00</span>
              </a>
              <div class="content-mini-cart">
                <h2>(<span class="cart-badge">0</span>) ITEMS IN MY CART</h2>
                <ul class="list-mini-cart-item">

                </ul>
                <div class="mini-cart-total">
                  <label>TOTAL</label>
                  <span class="total-mini-cart-price">Rs. 0.00</span>
                </div>
                <div class="mini-cart-button">
                  <a href="cart.php" class="mini-cart-view">view my cart </a>
                </div>
              </div>
            </div>
            <!-- End Mini Cart -->
          </div>
        </div>
      </div>
    </div>
    <div class="container">
      <div class="header-nav">
        <div class="row">
          <div class="col-md-3 col-sm-3 col-xs-6 hidden-sm">
            <div class="category-dropdown">
              <h2 class="title-category-dropdown"><span>Categories</span></h2>
              <div class="wrap-category-dropdown">
                <ul class="list-category-dropdown">
                  <?php
                  $PRODUCT_CATEGORIES1 = new ProductCategories(NULL);
                  foreach ($PRODUCT_CATEGORIES1->all() as $product_categories) {
                  ?>
                    <li class="has-cat-mega">
                      <a href="view-sub-categories.php?id=<?php echo $product_categories['id'] ?>">
                        <?php echo $product_categories['name'] ?></a>
                      <div class="cat-mega-menu cat-mega-style1">
                        <div class="row">
                          <?php
                          $SUB_CATEGORY = new SubCategory(NULL);
                          foreach ($SUB_CATEGORY->getProductsByCategory($product_categories['id']) as $sub_category1) {
                          ?>
                            <div class="col-md-4 col-sm-3">
                              <div class="list-cat-mega-menu">

                                <a href="all-products-by-category.php?id=<?php echo $product_categories['id'] ?>&subcategory=<?php echo $sub_category1['id'] ?>">
                                  <h2 class="title-cat-mega-menu">
                                    <?php echo $sub_category1['name'] ?></h2>
                                </a>
                                <?php
                                $PRODUCT1 = new Product(NULL);
                                foreach ($PRODUCT1->getProductsBySubProduct($sub_category1['id']) as $product) {
                                ?>
                                  <ul>
                                    <li><a href="view-product.php?id=<?php echo $product['id'] ?>"><?php echo $product['name'] ?></a>
                                    </li>
                                  </ul>
                                <?php } ?>
                              </div>
                            </div>
                          <?php } ?>
                        </div>
                      </div>
                    </li>
                  <?php }
                  ?>
                </ul>
                <a href="#" class="expand-category-link"></a>
              </div>
            </div>
            <!-- End Category Dropdown -->
          </div>
          <div class="col-md-9 col-sm-12 col-xs-6">
            <nav class="main-nav main-nav1">
              <ul>
                <li><a href="./">home</a></li>
                <li><a href="view-products.php">Products</a></li>
                <li><a href="offers.php">Offers</a></li>
                <li><a href="customer-feedback.php">Feedback</a></li>
                <li><a href="terms-and-conditions.php">Terms & Conditions</a></li>
                <li><a href="about-us.php">About</a></li>
                <li><a href="contact-us.php">Contact</a></li>
              </ul>
              <a href="#" class="toggle-mobile-menu"><span>Menu</span></a>
            </nav>
            <!-- End Main Nav -->
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Header -->
</div>
<div class="mobile-header visible-xs">
  <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
    <img src="images/icons/black/menu.png" alt="" title="" />
  </a>
  <div id="close-sidebar" class="hidden">
  <img src="images/icons/black/menu_close.png" alt="" title="" />
      </div>
  <div class="navbar_left visible-xs logo">
    <div class="logo_text"><a href="./"><img src="images/logo/logo.png" alt=""></a></div>
  </div>
  <a id="show-searchbar" class="btn btn-sm btn-dark" href="#">
    <img src="images/icons/black/search.png"  class="" alt="" title="" />
  </a>
</div>
<div class="searchbar-section hidden">
  <div class="searchbar">
    <form action="search.php" method="get">
      <input type="text" name="keyword" placeholder="Type here.." />
      <button type="submit" class="search-icon" name="search">
        <i class="fa fa-search "></i>
      </button>
    </form>
    <div id="close-searchbar">
      <i class="fa fa-times"></i>
    </div>
  </div>
</div>
<nav id="sidebar" class="sidebar-wrapper visible-xs">
  <div class="sidebar-content">
    <div class="sidebar-brand">
      <a href="./"><img src="images/logo/logo.png" alt=""></a>
      
    </div>
    <!-- sidebar-search  -->
    <div class="sidebar-menu">
      <ul>
        <!-- <li class="header-menu">
          <span>General</span>
        </li> -->
        <li>
          <a href="./">
            <span>Home</span>
          </a>
        </li>
        <li>
          <a href="view-products.php">
            <span>Products</span>
          </a>
        </li>
        <li class="sidebar-dropdown">
          <a href="#">
            <span>Product Categories</span>
            <i class="fa fa-angle-down down-arrow"></i>
          </a>
          <div class="sidebar-submenu">
            <ul>
              <?php
              $categories = ProductCategories::all();
              foreach ($categories as $category) {
                $subcategories = SubCategory::getSubCategoriesByCategory($category['id']);
                if (count($subcategories) > 0) {
              ?>
                  <li class="sidebar-sub-dropdown">
                    <a href="#"><span><?= $category['name']; ?></span>
                    <i class="fa fa-angle-down down-arrow"></i>
                    </a>
                    <div class="sidebar-sub-submenu">
                      <ul>
                        <?php
                        foreach ($subcategories as $subcategory) {
                        ?>
                          <li>
                            <a href="all-products-by-category.php?id=<?= $category['id']; ?>&subcategory=<?= $subcategory['id']; ?>"><span><?= $subcategory['name']; ?></span></a>
                          </li>
                        <?php
                        }
                        ?>
                      </ul>
                    </div>
                  </li>
                <?php
                } else {
                ?>
                  <li>
                    <a href="all-products-by-category.php?id=<?= $category['id']; ?>"><?= $category['name']; ?></a>
                  </li>
              <?php
                }
              }
              ?>
            </ul>
          </div>
        </li>
        <li>
          <a href="offers.php">
            <span>Offers</span>
          </a>
        </li>
        <li>
          <a href="customer-feedback.php">
            <span>Feedback</span>
          </a>
        </li>
        <li>
          <a href="terms-and-conditions.php">
            <span>Terms & Conditions</span>
          </a>
        </li>
        <li>
          <a href="about-us.php">
            <span>About Us</span>
          </a>
        </li>
        <li>
          <a href="contact-us.php">
            <span>Contact Us</span>
          </a>
        </li>
        <?php
        if (isset($_SESSION['id'])) {
        ?>
          <li class="sidebar-dropdown">
            <a href="#">
              <span>
                <?php
                if ($_SESSION['image_name']) {
                ?>
                  <img src="upload/customer/profile/<?php echo $_SESSION['image_name']; ?>" class="img-circle pro-img" />
                <?php
                } else {
                ?>
                  <img src="images/user.png" class="img-circle pro-img" />
                <?php
                }
                ?>
                <?php echo $_SESSION['name']; ?></span>
              <i class="fa fa-angle-down down-arrow"></i>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="member/profile.php">Profile</a>
                </li>
                <li>
                  <a href="post-and-get/logout.php">Log Out</a>
                </li>
              </ul>
            </div>
          </li>
        <?php
        } else {
        ?>
          <li class="sidebar-dropdown">
            <a href="#">
              <span>My Account</span>
              <i class="fa fa-angle-down down-arrow"></i>
            </a>
            <div class="sidebar-submenu">
              <ul>
                <li>
                  <a href="#myModal" class="trigger-btn" data-toggle="modal" id="sign-in">Sign In</a>
                </li>
                <li>
                  <a href="registration.php">Sign Up</a>
                </li>
              </ul>
            </div>
          </li>
        <?php
        }
        ?>

      </ul>
    </div>
    <!-- sidebar-menu  -->
  </div>
</nav>
<div id="myModal" class="modal fade">
  <div class="modal-dialog modal-login">
    <div class="modal-content">
      <div class="modal-header">
        <div class="avatar">
          <img src="images/default-man.png" alt="Member" class="img-circle">
        </div>
        <h4 class="modal-title">Member Login</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      </div>
      <div class="modal-body">
        <form method="post" id="login-form">
          <div class="form-group">
            <input type="email" class="form-control" name="user_email" id="user_email" placeholder="Email">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" name="user_password" id="user_password" placeholder="Password">
          </div>
          <div class="form-group">
            <button type="submit" name="login-submit" id="login" class="btn btn-primary btn-lg btn-block login-btn">Login</button>
          </div>
        </form>
      </div>
      <div class="modal-footer ">
        <div class="pull-left">
          <a href="forget-password.php">Forgot Password?</a>
        </div>
        <div class="pull-right">
          <a href="registration.php">Not a member? <span style="color: #003351;">Sign Up</span></a>
        </div>
      </div>

    </div>
  </div>
</div>

<!--Any Page Access -->
<div id="myModalAny" class="modal fade">
  <div class="modal-dialog modal-login">
    <div class="modal-content">
      <div class="modal-header">
        <div class="avatar">
          <img src="images/default-man.png" alt="Member" class="img-circle">
        </div>
        <h4 class="modal-title">Member Login</h4>
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
      </div>
      <div class="modal-body">
        <form method="post" id="login-form">
          <div class="form-group">
            <input type="email" class="form-control" name="user_email" id="user_email" placeholder="Email">
          </div>
          <div class="form-group">
            <input type="password" class="form-control" name="user_password" id="user_password" placeholder="Password">
          </div>
          <div class="form-group">
            <button type="submit" name="login-submit" id="login-page" class="btn btn-primary btn-lg btn-block login-btn">Login</button>
          </div>
        </form>
      </div>
      <div class="modal-footer ">
        <div class="pull-left">
          <a href="forget-password.php">Forgot Password?</a>
        </div>
        <div class="pull-right">
          <a href="registration.php">Not a member? <span style="color: #003351;">Sign Up</span></a>
        </div>
      </div>

    </div>
  </div>
</div>