<?php

include_once(dirname(__FILE__) . '/../../class/include.php');

//All Product Filter
if ($_POST['action'] == 'GETFILTERPRODUCT') {
    $minimum_price = '';
    $maximum_price = '';
    $sub_category = '';
    $brand = '';
    $category = '';
    $cat = '';
    $setlimit = '';
    $page = '';

    if (isset($_POST["minimum_price"])) {
        $minimum_price = $_POST["minimum_price"];
    }
    if (isset($_POST["maximum_price"])) {
        $maximum_price = $_POST["maximum_price"];
    }
    if (isset($_POST["sub_category"])) {
        $sub_category = $_POST["sub_category"];
    }
    if (isset($_POST["brand"])) {
        $brand = $_POST["brand"];
    }

    if (isset($_POST["category"])) {
        $category = $_POST["category"];
    }
    if (isset($_POST["cat"])) {
        $cat = $_POST["cat"];
    }
    if (isset($_POST["setlimit"])) {
        $setlimit = $_POST["setlimit"];
    }
    if (isset($_POST["pagelimit"])) {
        $page = $_POST["pagelimit"];
    }

    $PRODUCT = new Product(NULL);
    if ($category == '' && $cat == '' && $brand == '' && $sub_category == '') {
//        $result = $PRODUCT->getAllProducts($minimum_price, $maximum_price);
        $result = $PRODUCT->getAllProducts($minimum_price, $maximum_price, $page, $setlimit);
        echo $result;
//        echo $result1;
    } else {
        $result = $PRODUCT->getAllProductsByCategoryAndBrand($category, $cat, $minimum_price, $maximum_price, $sub_category, $brand, $page, $setlimit);
        echo $result;
    }
}

//Get Max Price in Product
if ($_POST['action'] == 'GETMAXPRICE') {
    $category = '';
    $cat = '';
    $sub_category = '';
    $brand = '';
    if (isset($_POST["minimum_price"])) {
        $minimum_price = $_POST["minimum_price"];
    }
    if (isset($_POST["maximum_price"])) {
        $maximum_price = $_POST["maximum_price"];
    }
    if (isset($_POST["sub_category"])) {
        $sub_category = $_POST["sub_category"];
    }
    if (isset($_POST["brand"])) {
        $brand = $_POST["brand"];
    }

    if (isset($_POST["category"])) {
        $category = $_POST["category"];
    }
    if (isset($_POST["cat"])) {
        $cat = $_POST["cat"];
    }


    $PRODUCT = new Product(NULL);

    $results = $PRODUCT->getMaxPriceInProduct1($category, $cat, $sub_category, $brand);
    $result_data = $results[0];

    echo $result_data;
}

//Get Min pRice in Product
if ($_POST['action'] == 'GETMINPRICE') {
    $category = '';
    $cat = '';
    $sub_category = '';
    $brand = '';
    if (isset($_POST["minimum_price"])) {
        $minimum_price = $_POST["minimum_price"];
    }
    if (isset($_POST["maximum_price"])) {
        $maximum_price = $_POST["maximum_price"];
    }
    if (isset($_POST["sub_category"])) {
        $sub_category = $_POST["sub_category"];
    }
    if (isset($_POST["brand"])) {
        $brand = $_POST["brand"];
    }

    if (isset($_POST["category"])) {
        $category = $_POST["category"];
    }
    if (isset($_POST["cat"])) {
        $cat = $_POST["cat"];
    }

    $PRODUCT = new Product(NULL);

    $results = $PRODUCT->getMinPriceInProduct1($category, $cat, $sub_category, $brand);
    $result_data = $results[0];
    echo $result_data;
}

//Pagination Show
if ($_POST['action'] == 'SHOWPAGINATION') {

    $minimum_price = '';
    $maximum_price = '';
    $category = '';
    $cat = '';
    $sub_category = '';
    $brand = '';
    $setlimit = '';
    $page = '';

    if (isset($_POST["minimum_price"])) {
        $minimum_price = $_POST["minimum_price"];
    }
    if (isset($_POST["maximum_price"])) {
        $maximum_price = $_POST["maximum_price"];
    }
    if (isset($_POST["sub_category"])) {
        $sub_category = $_POST["sub_category"];
    }
    if (isset($_POST["brand"])) {
        $brand = $_POST["brand"];
    }

    if (isset($_POST["category"])) {
        $category = $_POST["category"];
    }
    if (isset($_POST["cat"])) {
        $cat = $_POST["cat"];
    }
    if (isset($_POST["setlimit"])) {
        $setlimit = $_POST["setlimit"];
    }
    if (isset($_POST["page"])) {
        $page = $_POST["page"];
    }

    $PRODUCT = new Product(NULL);

    $result = $PRODUCT->showPagination($minimum_price, $maximum_price, $category, $cat, $sub_category, $brand, $setlimit, $page);

    echo $result;
}
 

