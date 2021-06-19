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
		<form name="frmpage" method="post" enctype="multipart/form-data" action="confirmpage.php">
		<input type="hidden" name="pid" value="" />
        <h2>Add New page</h2>
		<table>
			
			<tr>
				<td>Page Title</td>
				<td><input type="text" name="ptitle" value="" /></td>
			</tr>
			<tr>
				<td>Page Description</td>
				<td>
				<?php
				//echo die();
				include("fckeditor/fckeditor.php");
				
				$objfckeditor = new FCKeditor("pdesc");
				$objfckeditor->BasePath = "fckeditor/";
				$objfckeditor->Width=500;
				$objfckeditor->Height=400;
				//$objfckeditor->Value=$datapage['pagedesc'];
				$objfckeditor->Create();
				?>
				</td>
			</tr>
            <tr>
				<td>Image</td>
				<td><input type="file" name="pict"/></td>
			</tr>
			<tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="add page" /></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>