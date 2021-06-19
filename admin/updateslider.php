<?php
require_once("dbconnect.php");
$gid=$_POST['imgsliderid'];
$sql="select * from news_imgage_slider where imgsliderid='$gid'";
$data=executequery($sql);
$datagal=mysql_fetch_assoc($data);
$image=$datagal['imgslidername'];
$caption=$_POST['caption'];
$location=$_POST['location'];
if(isset($_FILES['pict']['name']))
{
$imgname=$_FILES['pict']['name'];
$tmploc=$_FILES['pict']['tmp_name'];
$perloc="images/slides/".$imgname;
move_uploaded_file($tmploc,$perloc);
$sql = "update news_imgage_slider set caption='$caption',location='$location',imgslidername='$imgname' where imgsliderid='$imgsliderid'";
//print_r($sql);
	//die();
}
else
{
	$sql = "update news_imgage_slider set caption='$caption',location='$location',imgslidername='$image' where imgsliderid='$imgsliderid'";
	
}
$rescat = executequery($sql);
header("location:manageimageslider.php?msg=slider updated successfully");
?>