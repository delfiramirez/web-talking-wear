<?php

$sendTo = strtolower(trim("2qt@segonquart.net, toti@talking-wear.com"));

$subject = htmlspecialchars("WEB: Contacte", ENT_NOQUOTES, 'utf-8');

$headers = "MIME-Version: 1.0" . "\r\n";

$headers .= "From: " .stripslashes(trim($_POST["firstName"])) ." ". stripslashes(trim($_POST["lastname"])) . "<" .stripslashes(trim( $_POST["email"])) .">\r\n";

$headers .= "Reply-To: " . stripslashes(trim($_POST["email"] )) . "\r\n";

$headers .= "Return-path: " .stripslashes(trim( $_POST["email"]));

$headers .= "Content-type: text/plain; charset=utf-8" . "\r\n";
	   
$headers .= "Last-Modified: " . date('D, d M Y H:i:s');
	   
$headers .= "Pragma: public" . "\r\n";
	   
$headers .= "Cache-Control: cache, must-revalidate" . "\r\n";

$message = stripslashes(trim($_POST["message"]));

mail($sendTo, $subject, $message, $headers);

?>
