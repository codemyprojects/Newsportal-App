<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$aid = $_GET['aid'];
$sql="DELETE   from news_entertainment_articles where aid='$aid'";
executequery($sql);
header("location:managemanageentertainmentarticles.php?msg=articles deleted successfully");
?>
