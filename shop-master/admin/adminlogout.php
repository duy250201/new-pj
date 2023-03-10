<?php
session_start();
 
$_SESSION = array();
 
session_destroy();
 
header("location: ad-login.php");
exit;
?>