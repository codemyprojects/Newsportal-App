<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$catid = $_GET['catid'];
$sql="DELETE   from news_category_prabash where catid='$catid'";
executequery($sql);
header("location:manageprabash.php?msg=category deleted successfully");
?>
