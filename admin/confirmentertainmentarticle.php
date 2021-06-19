<?php
require_once("dbconnect.php");

$catid=$_POST['catid'];
$atitle = $_POST['atitle'];
$adesc = $_POST['adesc'];

$sql = "insert into  news_entertainment_articles(aid,atitle,adesc,status,catid) values (null,'$atitle','$adesc','1','$catid')";
$respage = executequery($sql);
header("location:manageentertainmentarticles.php?msg=article added successfully");
?>