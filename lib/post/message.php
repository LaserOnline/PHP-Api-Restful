<?php

require_once("../../config/pdo.php");
require_once("../../model/res/res.php");

$res = new Response();
$message = $_POST["message"];
    
    if (empty($message)) {
        $res->Message("Message Empty",400);
    } else if (strlen($message) > 255 ) {
        $res->Message("Message Length > 255",400);
    } else {

        try {

        $insert = $pdo->prepare("INSERT INTO message(str_message) 
        VALUE (:message)");
        $insert->bindParam(":message", $message);
        $insert->execute();
        $res->Message("Success",200);

        } catch (PDOException $e) {
            $res->Message($e,400);
        }
        
    }

?>