<?php

include_once(dirname(__FILE__) . '/../class/include.php');

$merchant_id = $_POST['merchant_id'];
$order_id = $_POST['order_id'];
$payhere_amount = $_POST['payhere_amount'];
$payhere_currency = $_POST['payhere_currency'];
$status_code = $_POST['status_code'];
$md5sig = $_POST['md5sig'];


// Live Merchant Secret (Can be found on your PayHere account's Settings page)
$merchant_secret = '4DtCJFuj0Y28LUqYNY5j3i8MOUovp43Rl4vW5rTDJ7um'; 
//$merchant_secret = '4DujqdlsOLE8gltKoUCWXc4TxyNlQQEDf8bP21iwx2mr'; // Sandbox Merchant Secret

$local_md5sig = strtoupper(md5($merchant_id . $order_id . $payhere_amount . $payhere_currency . $status_code . strtoupper(md5($merchant_secret))));

$ORDER = new Order($order_id);

if ($status_code == 2) {

    $ORDER->paymentStatusCode = $status_code;
    $ORDER->status = 1;
    $ORDER->statusCode = serialize($_POST);
    $result = $ORDER->updatePaymentStatusCodeAndStatus();

    if ($result) {
        $ORD = new Order($order_id);
        $products = OrderProduct::getProductsByOrder($order_id);
        $res = $ORD->sendOrderMail($products);
        $res1 = $ORD->sendOrderMailToAdmin($products);
    }
    unset($_SESSION["shopping_cart"]);
} else {
    
        $ORD = new Order($order_id);
        $res = $ORD->sendPaymentFailureMail($ORD);
    
}
?>