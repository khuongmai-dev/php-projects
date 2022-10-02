<?php
/* Project 2
 Name: Khuong Mai
 Date: Sep 12, 2022
 Description:
*/

//Declear variables
$is_valid = true;
$address = "";
$city = "";
$province = "";
$email = "";
$postal_code = "";
$qty1 = 0;
$qty2 = 0;
$qty3 = 0; 
$qty4 = 0;
$qty5 = 0;
$total = 0;
$products = [];
$errMessage = [];

//Validate full name
if(!(isset($_POST['fullname']) && filter_input(INPUT_POST, 'fullname', FILTER_SANITIZE_SPECIAL_CHARS) && preg_match("/^([a-zA-Z' ]+)$/", $_POST['fullname']))){
    $is_valid = false;
    array_push($errMessage, 'Please check full name again!');
}

//Validate address
if(!isset($_POST['address']) || empty($_POST['address'])){
    $is_valid = false;
    array_push($errMessage, 'Please check address again!');
}
else{
    $address = filter_input(INPUT_POST, 'address', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
}

//Validate city 
if(!isset($_POST['city']) || empty($_POST['city'])){
    $is_valid = false;
    array_push($errMessage, 'Please check city again!');
}
else{
    $city = filter_input(INPUT_POST, 'city', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
}

//Validate Provinces
if(!isset($_POST['province']) || !filter_input(INPUT_POST, 'province', FILTER_VALIDATE_REGEXP, array("options" => array("regexp" => "^(N[BLSTU]|[AMN]B|[BQ]C|ON|PE|SK)$^")))){
    $is_valid = false;
    array_push($errMessage, 'Please check provinces again!');
}
else{
    $province = filter_input(INPUT_POST, 'province', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
}

// Validate email address
if(!(isset($_POST['email']) && filter_input(INPUT_POST, 'email', FILTER_VALIDATE_EMAIL))){
    $is_valid = false;
    array_push($errMessage, 'Please check email again!');
}
else{
    $email = filter_input(INPUT_POST, 'email', FILTER_SANITIZE_EMAIL);
}

// Validate Canadian postal code
 if(!(isset($_POST['postal']) && filter_input(INPUT_POST, 'postal', FILTER_VALIDATE_REGEXP, array("options" => array("regexp" => "^[ABCEGHJKLMNPRSTVXY]{1}\d{1}[A-Z]{1} *\d{1}[A-Z]{1}\d{1}$^"))))){
    $is_valid = false;
    array_push($errMessage, 'Please check postal code again!');
    
 }
 else{
    $postal_code = filter_input(INPUT_POST, 'postal', FILTER_SANITIZE_FULL_SPECIAL_CHARS);
}   

 //Validate card type
 if(!isset($_POST['cardtype']) || !(($_POST['cardtype'] == 'visa') || ($_POST['cardtype'] == 'amex') || ($_POST['cardtype'] == 'mastercard'))){
    $is_valid = false;
    array_push($errMessage, 'Please check card type again!');
 }
 
 //Validate credit card number: an integer, 10 digit.
 if(!(isset($_POST['cardnumber']) && filter_input(INPUT_POST, 'cardnumber', FILTER_VALIDATE_INT) && preg_match("/^[0-9]{10}+$/", $_POST['cardnumber']))){
    $is_valid = false;
    array_push($errMessage, 'Please check card number again!');
 }

 //Validate card expiry date
 if(!(isset($_POST['month']) && filter_input(INPUT_POST, 'month', FILTER_VALIDATE_INT) && ($_POST['month'] >= 1) 
 && ($_POST['month'] <= 12))){
    $is_valid = false;
    array_push($errMessage, 'Please check card expiry month again!');
 }

 if(!(isset($_POST['year']) && filter_input(INPUT_POST, 'year', FILTER_VALIDATE_INT) && ($_POST['year'] >= date("Y")) 
 && ($_POST['year'] <= date("Y") + 5))){
    $is_valid = false;
    array_push($errMessage, 'Please check card expiry year again!');
 }

//Validate quantities

if(filter_input(INPUT_POST, 'qty1', FILTER_VALIDATE_INT) && $_POST['qty1'] >= 0){
    $qty1 = filter_input(INPUT_POST, 'qty1', FILTER_SANITIZE_NUMBER_INT);
    array_push($products, ['product_name' => 'macbook', 'product_description' => 'macbook pro 2022', 'price' => 1899.99, 'quantity' => $qty1]);
}
elseif(empty($_POST['qty1']) || $_POST['qty1'] == 0){
}
else{
    $is_valid = false;
    array_push($errMessage, 'Please check macbook product again!');
}

if(filter_input(INPUT_POST, 'qty2', FILTER_VALIDATE_INT) && $_POST['qty2'] >= 0){
    $qty2 = filter_input(INPUT_POST, 'qty2', FILTER_SANITIZE_NUMBER_INT);
    array_push($products, ['product_name' => 'mouse', 'product_description' => 'Razer', 'price' => 79.99, 'quantity' => $qty2]);
}
elseif(empty($_POST['qty2']) || $_POST['qty2'] == 0){
}
else{
    $is_valid = false;
    array_push($errMessage, 'Please check mouse product again!');
}

if(filter_input(INPUT_POST, 'qty3', FILTER_VALIDATE_INT) && $_POST['qty3'] >= 0){
    $qty3 = filter_input(INPUT_POST, 'qty3', FILTER_SANITIZE_NUMBER_INT);
    array_push($products, ['product_name' => 'WDHDD', 'product_description' => 'WD My Passport', 'price' => 179.99, 'quantity' => $qty3]);
}
elseif(empty($_POST['qty3']) || $_POST['qty3'] == 0){
   
}
else{
    $is_valid = false;
    array_push($errMessage, 'Please check hdd product again!');
}

if(filter_input(INPUT_POST, 'qty4', FILTER_VALIDATE_INT) && $_POST['qty4'] >= 0){
    $qty4 = filter_input(INPUT_POST, 'qty4', FILTER_SANITIZE_NUMBER_INT);
    array_push($products,     ['product_name' => 'phone', 'product_description' => 'Google nexus 7', 'price' => 249.99, 'quantity' => $qty4]);
}
elseif(empty($_POST['qty4']) || $_POST['qty4'] == 0){
  
}
else{
    $is_valid = false;
    array_push($errMessage, 'Please check tablet product again!');
}

if(filter_input(INPUT_POST, 'qty5', FILTER_VALIDATE_INT) && $_POST['qty5'] >= 0){
    $qty5 = filter_input(INPUT_POST, 'qty5', FILTER_SANITIZE_NUMBER_INT);
    array_push($products, ['product_name' => 'drums', 'product_description' => 'DD-45 Drums', 'price' => 119.99, 'quantity' => $qty5]);
}
elseif(empty($_POST['qty5']) || $_POST['qty5'] == 0){
 
}
else{
    $is_valid = false;
    array_push($errMessage, 'Please check drum product again!');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Thanks for shopping at the WebDev Store!</title>
    <link rel="stylesheet" type="text/css" href="styles.css" />
</head>
<body>
    <div class="invoice">
        <h2>Thanks for your order .</h2>
        <h3>Here's a summary of your order:</h3>
        <?php if($is_valid): ?>
        <table>
            <tr>
                <td colspan="4"><h3>Address Information</h3></td>
            </tr>
            <tr>
                <td class="alignright"><span class="bold">Address:</span></td>
                <td><?= $address ?></td>
                <td class="alignright"><span class="bold">City:</span></td>
                <td><?= $city ?></td>
            </tr>
            <tr>
                <td class="alignright"><span class="bold">Province:</span></td>
                <td><?= $province?></td>
                <td class="alignright"><span class="bold">Postal Code:</span></td>
                <td><?= $postal_code ?></td>
            </tr>
            <tr>
                <td colspan="2" class="alignright"><span class="bold">Email:</span></td>
                <td colspan="2"><?= $email ?></td>
            </tr>
        </table>
        <table>
            <tr>
                <td colspan="3"><h3>Order Information</h3></td>
            </tr>
            <tr>
                <td><span class="bold">Quantity</span></td>
                <td><span class="bold">Description</span></td>
                <td><span class="bold">Cost</span></td>
            </tr>      
            <?php foreach($products as $values){ ?>
            <tr>
                <td><!-- quantity--><?= $values['quantity']?></td>
                <td><!-- description--><?= $values['product_description']?></td>
                <td class='alignright'><!-- cost --><?= $cost = $values['price'] * $values['quantity']?></td>
            </tr>
            <?php $total += $cost ;} ?>
            <tr>
                <td colspan="2" class='alignright'><span class="bold">Totals</span></td>
                <td class='alignright'><span class="bold">$<?= $total ?> </span></td>
            </tr>
        </table>
        <?php else: ?>
        <?php foreach($errMessage as $values):?>
            <?= $values, "<br/>" ?>
            <?php endforeach ?>
        <?php endif ?>    
    </div>
</body>
</html>