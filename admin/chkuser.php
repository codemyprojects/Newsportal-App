<?php
require_once("dbconnect.php");


$uname = $_POST['uname'];
$pwd = md5($_POST['pwd']);
//$access=$_POST['access'];
//echo $access."Hi";
//die();
$sql = "select * from news_admin where uname='$uname' and pwd='$pwd' and status=1 ";
$res = executequery($sql); 
$rows = mysql_num_rows($res);
if($rows==1) {
	session_start();
	$_SESSION['uname']=$uname;
	//$_SESSION['access']=1;
	$_SESSION['client']="newssite";
	header("location:home.php");
}else {
	header("location:index.php");
}
?>