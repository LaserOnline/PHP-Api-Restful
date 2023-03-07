<?php

require_once("../../config/pdo.php");
require_once("../../model/res/res.php");
$res = new Response();

if ($_SERVER['REQUEST_METHOD'] === 'DELETE') {

    parse_str(file_get_contents("php://input"), $putData); 
    $delete_id = $putData['delete_id'];
        
        if (empty($delete_id)) {
            $res->Message("Empty ID",405);
        } else {

            try {
                
                $select = $pdo->prepare("SELECT COUNT(message_id) 
                FROM message 
                WHERE message_id = :message_id");
                $select->execute(array(':message_id' => $delete_id));
                $row = $select->fetchAll(PDO::FETCH_ASSOC);
                
                    if ($row[0]['COUNT(message_id)'] > 0 ) {

                        $stmt = $pdo->prepare("DELETE  FROM message 
                        WHERE message_id = :message_id");
                        $stmt->bindParam(':message_id', $delete_id);
                        $stmt->execute();
                        $res->Message("Success",200);

                    } else {
                        $res->Message("ID Not Found",404);
                    }

            } catch (PDOException $e) {
                $res->Message($e,405);
            }

        }

} else {
    $res->Message("Error METHOD DELETE",405);
}

?>