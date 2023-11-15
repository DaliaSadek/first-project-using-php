<?php
// Session
session_start();
 
// Remove session
$_SESSION = array();
session_destroy();
 
// Redirect to login page
header("location: login.php");
exit;
?>