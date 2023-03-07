<?php

require_once("../../config/pdo.php");
require_once("../../model/res/res.php");

$res = new Response();
    
    $select = $pdo->prepare("SELECT * FROM product");
    $select->execute();
    $row = $select->fetchAll(PDO::FETCH_ASSOC);

    foreach ($row as &$product) {
        $product['Product_Price'] = number_format($product['Product_Price']);
    }
        $res->Message($row,200);

?>