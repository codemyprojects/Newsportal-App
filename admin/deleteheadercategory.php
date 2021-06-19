<?php 
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$catid=$_GET['catid'];
$sql="DELETE FROM news_header_category where catid='$catid'";
$datacat=executequery($sql);

if($datacat){
header("location:manageheadercategory.php?msg=delete successfully");
}
else
{
header("location:manageheadercategory.php?msg=failure");
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
</body>
</html>
