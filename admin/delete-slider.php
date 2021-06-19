<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$imgsliderid= $_GET['imgsliderid'];

$sql="DELETE   from news_imgage_slider where imgsliderid='$imgsliderid'";
executequery($sql);
header("location:manageimageslider.php?msg=image deleted successfully");
?>
