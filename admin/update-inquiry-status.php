<?php
//print_r($_POST);
$val = $_POST['value'];
$value = explode(',',$val);
$status = $value[1];
$id = $value[0];
require_once("dbconnect.php");
$sql = "update news_inquiry set status='$status' where id='$id'";
executequery($sql);
echo $status;
?>