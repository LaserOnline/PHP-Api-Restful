<?php

require_once("../../config/pdo.php");
require_once("../../model/res/res.php");

$res = new Response();

    if($_SERVER["REQUEST_METHOD"] === "PUT") {
        parse_str(file_get_contents("php://input"), $putData); // แปลงข้อมูล PUT request เป็น array
        $update_message = $putData['update_message']; // รับค่า message จาก PUT request
        $id = $putData["id"]; // รับค่า id จาก put request

        if (empty($id)) {
            $res->Message("Error ID Empty",404);
        } else if (empty($update_message)) {
            $res->Message("Error Message Empty",405);
        } else if (strlen($update_message) > 255) {
            $res->Message("Error Message > 255",405);
        } else {

            try {

                $select = $pdo->prepare("SELECT COUNT(message_id)
                FROM message 
                WHERE message_id = :message_id");
                $select->execute(array(':message_id' => $id));
                $row = $select->fetchAll(PDO::FETCH_ASSOC);

                    if ($row[0]['COUNT(message_id)'] > 0 ) {
                        $sql = "UPDATE message SET str_message = :update_message WHERE message_id = :message_id";
                        $stmt = $pdo->prepare($sql);
                        $stmt->execute(array(':update_message' => $update_message, 
                        ":message_id" => $id));
                        $res->Message("Update Successfully",200);
                    } else {
                        $res->Message("ID NOT Found",404);
                    }

            } catch (PDOException $e) {
                $res->Message($e,405);
            }

        }     

    } else {
        $res->Message("Error METHOD PUT ",405);
    }

?>
