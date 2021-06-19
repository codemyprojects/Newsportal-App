<?php
require_once("dbconnect.php");?>

<?php 
$image=$_POST['image'];
//die();
$catname=$_POST['catname'];
$catdesc=$_POST['catdesc'];
$catid=$_POST['catid'];
if(isset($_FILES['pict']['name']))
{ 
unlink("images/".$image);
$imgname=$_FILES['pict']['name'];
$tmpath=$_FILES['pict']['tmp_name'];
$ppath="images/".$imgname;
move_uploaded_file($tmpath,$ppath);
//die(); ?>

<?php 
$sql = "update news_category_entertainment set catname='$catname',catdesc='$catdesc',image='$imgname' where catid='$catid'";
$rescat = executequery($sql);
header("location:manageentertainmentnews.php?msg=category updated successfully");}?>