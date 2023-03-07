<?php

require_once("../../config/pdo.php");
require_once("../../model/res/res.php");
$res = new Response();

$username = $_POST["username"];
$password = $_POST["password"];

    if(empty($username)) {
        $res->Message("Error Username Empty");
    } else if (empty($password)) {
        $res->Message("Error Password Empty");
    } else {

        try {
            
            $sql = $pdo->prepare("SELECT COUNT(Username) 
            FROM  username 
            WHERE Username = :username AND UserPassword = :pass");
            $sql->bindParam(":username", $username);
            $sql->bindParam(":pass", $password);
            $sql->execute();
            $row = $sql->fetchAll(PDO::FETCH_ASSOC);

            if ($row[0]['COUNT(Username)'] > 0 ) {
                $res->Message("Success",200);
            } else {
                $res->Message("Error Email OR Password",404);
            }

        } catch (PDOException $e) {
            $res->Message($e,400);
        }
        
    }

?>