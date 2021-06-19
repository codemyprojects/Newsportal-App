<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$id = $_GET['id'];
$sql="DELETE   from news_inquiry where id='$id'";
executequery($sql);
header("location:manageinquiry.php?msg=inquiry deleted successfully");
?>
