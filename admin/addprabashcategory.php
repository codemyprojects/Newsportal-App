<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
//$sql = "SELECT * FROM news_category where catid='$catid'";
//$resppage = executequery($sql);

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Nepal Korea Overseas Trade Link Pvt.Ltd.</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body>
<div class="wrapper">
	<div class="sidebar">
	<?php include("sidebar.php");?>
	</div>
	<div class="content">
		<form name="frmpage" method="post" enctype="multipart/form-data" action="confirmprabashcatgory.php">
		<input type="hidden" name="catid" value="" />
        <h2>Add New Category</h2>
		<table>
			
			<tr>
				<td>Category Name</td>
				<td><input type="text" name="catname" value="" /></td>
			</tr>
			<tr>
				<td>Category Description</td>
				<td><textarea name="catdesc" rows="4" cols="25"></textarea></td>
			</tr>
            <tr>
				<td>Image</td>
				<td><input type="file" name="pict"/></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="add Category" /></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>