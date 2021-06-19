<?php
require_once("dbconnect.php");
$pid=$_POST['pid'];
$sql1="select * from news_pages where pid='$pid'";
$data=executequery($sql1);
$datapage=mysql_fetch_assoc($data);
$image=$datapage['image'];
$pid=$_POST['pid'];
$ptitle=$_POST['ptitle'];
$pdesc=$_POST['pdesc'];
if(isset($_FILES['pict']['name']))
{ 
unlink("images/".$image);
$imgname=$_FILES['pict']['name'];
$tmpath=$_FILES['pict']['tmp_name'];
$ppath="images/".$imgname;
move_uploaded_file($tmpath,$ppath);
//die(); ?>
<?php 
$sql = "update news_pages_headers set pagetitle='$ptitle',pagedesc='$pdesc',image='$imgname' where pid='$pid'";
$rescat = executequery($sql);
header("location:managenewsheaders.php?msg=category updated successfully");}?>