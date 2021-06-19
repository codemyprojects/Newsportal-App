<?php
require_once("dbconnect.php");
$loc = $_POST['location'];
$caption = $_POST['caption'];
if(isset($_FILES['pict']['name'])) {
//$rand = rand();
//$imgname = $rand."_".$_FILES['pict']['name'];
$imgname = $_FILES['pict']['name'];
$tmploc = $_FILES['pict']['tmp_name'];
$perloc = "images/slides/".$imgname;
move_uploaded_file($tmploc,$perloc);
$sql = "insert into  news_imgage_slider (imgsliderid,imgslidername,caption,location,status) values (null,'$imgname','$caption','$loc',1)";

}else {
$sql = "insert into  news_imgage_slider (imgsliderid,imgslidername,caption,location,status) values (null,'','$caption','$loc',1)";

}
executequery($sql);
header("location:manageimageslider.php?msg=image added successfully");
?>