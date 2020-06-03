<?php

include_once(dirname(__FILE__) . '/../../class/include.php');
//featch_cart
session_start();

$product = 0;
$quantity = 0;
$total_item = 0;
$total_price = 0;
$output = '';
$cart = '';

$output .= '<table class="table table-bordered text-center">'
        . '<thead>'
        . '<tr>'
        . '<th width="20%">Item </th>'
        . '<th width="20%">Product Name</th>'
        . '<th width="20%">Price</th>'
        . '<th width="20%">Quantity</th>'
        . '<th width="20%">Subtotal</th>'
        . '<th width="10%" >Action</th>'
        . '</tr>'
        . '</thead>';

if (!empty($_SESSION["shopping_cart"])) {

    foreach ($_SESSION["shopping_cart"] as $key => $value) {
        $PRODUCT = new Product($value["product_id"]);

        $output .= '<tr class="cart_item">'
                . '<td class="product-remove" >'
                . '<img src="upload/product-categories/sub-category/product/photos/' . $PRODUCT->image_name . '" width="30%"/>'
                . '</td>'
                . '<td class="product-remove">' . $value["product_name"] . '</td>'
                . '<td class="product-remove text-right">Rs: ' . number_format($value["product_price"], 2) . '</td>'
                . '<td class="product-remove">'
                . ' <div class="input-group" style="width: 70%"> '
                . ' <input type="number" name="quantity" id="quantity' . $PRODUCT->id . '" min="' . $PRODUCT->min_qty . '" max="' . $PRODUCT->max_qty . '" step="' . $PRODUCT->min_qty . '"  class="quty-size form-control  text-center quantity qty-input"  product_id=' . $value["product_id"] . ' value="' . $value["product_quantity"] . '"/>
                     </div> '
                . '</td>'
                . '<td class="product-remove text-right">Rs: ' . number_format($value["product_quantity"] * $value["product_price"], 2) . '</td>'
                //  . '<td class="product-remove">Rs: ' . $value["product_quantity"] . '</td>'
                //hidden values in form 
                . ' <input type="hidden" class="form-control  "  product_id="' . $value["product_id"] . '" /> '
                . '<input type="hidden" class="form-control" id="price" name="price" value="' . $value["product_price"] . '"/>'
                . '<input type="hidden" class="form-control max"   value="' . $PRODUCT->unite . '"/>'
                . '<td class="product-remove"> <button name="delete" class="btn btn-danger btn-xs delete" id="' . $value["product_id"] . '">Remove</button></td>'
                . '</tr>';

        $total_price = $total_price + ($value["product_quantity"] * $value["product_price"]);
        $total_item = $total_item + 1;
    }
    $output .= '<tr>'
            . '<td class="product-remove text-bold" colspan="4" align="right"> Total </td>'
            . '<td class="product-remove text-bold"  align="right" >Rs: ' . number_format($total_price, 2) . '</td>'
            . '<td class="product-remove" > </td>'
            . '</tr>';
} else {
    $output .= '<tr>'
            . '<td colspan="6" align="center" class="product-remove">'
            . 'Your Cart is Empty!.'
            . '</td>'
            . '</tr>';
}
$output .= '<input type="hidden" class="form-control" id="total_price"   value="' . $total_price . '"/>';
$output .= '</table>';

$tot1 = 0;
$items = 0;
$more_items = '';

foreach ($_SESSION["shopping_cart"] as $key1 => $product1) {
    $PRODUCT1 = new Product($product1['product_id']);
    $price1 = $product1['product_quantity'] * $product1['product_price'];
    $tot1 += $price1;
    $items += 1;
    
    if ($key1 < 3) {
        
        $cart .= '<li>'
                . '<div class="mini-cart-edit">'
                . '<a href="#" class="delete-mini-cart-item"><i class="fa fa-trash-o"></i></a>'
                . '<a href="#" class="edit-mini-cart-item"><i class="fa fa-pencil"></i></a>'
                . '</div>'
                . '<div class="mini-cart-thumb">'
                . '<a href="#"><img src="upload/product-categories/sub-category/product/photos/' . $PRODUCT1->image_name . '" alt=""></a>'
                . '</div>'
                . '<div class="mini-cart-info">'
                . '<h3><a href="view-product.php?id=' . $PRODUCT1->id .'">' . $PRODUCT1->name .'</a></h3>'
                . '<div class="info-price">'
                . '<span>Rs. ' .number_format($price1, 2) . '</span>'
                . '</div>'
                . '</div>'
                . '</li>';
    }
}

//if ($items > 3) {
//    $more_items .= $items - 3 . ' more items.';
//}
$data = array(
    'cart_details' => $output,
    'cart_box' => $cart,
    'total_item' => $total_item,
    'total_price' => number_format($tot1, 2)
//    'more_items' => $more_items
);

echo json_encode($data);
?>