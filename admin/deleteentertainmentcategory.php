<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$catid = $_GET['catid'];
$sql="DELETE   from news_category_entertainment where catid='$catid'";
executequery($sql);
header("location:manageentertainmentnews.php?msg=category deleted successfully");
?>
