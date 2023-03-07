<?php

require_once("../../config/pdo.php");
require_once("../../model/res/res.php");
$res = new Response();

    $select = $pdo->prepare("SELECT * FROM message");
    $select->execute();
    $row = $select->fetchAll(PDO::FETCH_ASSOC);
    $res->Message($row,200);
    
?>