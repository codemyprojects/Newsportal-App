<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$flag = 0;
$pid = $_GET['pid'];
$page = $_GET['page'];
if($page=='child') {
	$sql = "delete from news_pages where pid='$pid'";
}else if($page=='parent') {
	$sql = "select * from news_pages where ppid='$pid'";
	$res = executequery($sql);
	$rows = mysql_num_rows($res);
	if($rows > 0 ) {
		$flag=1;
		//exit(0);
	}else {
		$sql = "delete from news_pages where pid='$pid'";
	}
}
if($flag==0) {
	executequery($sql);
	header("location:managepages.php?msg=page deleted successfully");
}else {
		header("location:managepages.php?msg=Cannot delete! One or more child pages present");

}
?>