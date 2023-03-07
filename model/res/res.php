<?php

    class Response {
        
        public function Message($Result = ["Empty"], $Code = 400) {
            $response = array(
                'Message' => $Result,
                "StatusCode" => $Code
            );
                http_response_code($Code);
                echo json_encode($response);
        }

    }

?>