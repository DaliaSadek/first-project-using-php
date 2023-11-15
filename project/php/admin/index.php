<?php

// Session
session_start();
 
// Check if the user is already logged in
if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: users.php");
    exit;
}else{
    header("location: login.php");
    exit;
}

?>