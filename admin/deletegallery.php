<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$gid = $_GET['gid'];

$sql="DELETE   from news_gallery where gid='$gid'";
executequery($sql);
header("location:managegallery.php?msg=galllery deleted successfully");
?>
