<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body>
<div class="wrapper">
	<div class="sidebar">
	<?php include("sidebar.php");?>
	</div>
	<div class="content">
	<form name="frmpage" method="post" enctype="multipart/form-data" action="confirmentertainmentarticle.php">
   <!-- <input type="hidden" name="catid" value="" />
    <input type="hidden" name="aid" value="" />-->
		<h2>Add New Article</h2>
		<table>
			<tr>
				<td>Select Parent</td>
				<td>
				<select name="catid">
				<option>select</option>
				<?php
				$sql = "select * from  news_category_entertainment";
				$resppage = executequery($sql);
				while($datacategory = mysql_fetch_assoc($resppage)) { 
				?>
				<option value="<?php echo $datacategory['catid'];?>"><?php echo $datacategory['catname'];?></option>
				<?php } ?>
				</select>
				
				</td>
			</tr>
			<tr>
				<td>Article Titles</td>
				<td><input type="text" name="atitle" /></td>
			</tr>
			<tr>
				<td>Article Description</td>
				<td><textarea name="adesc" rows="4" cols="25"></textarea></td>
			</tr><tr>
				<td>Image</td>
				<td><input type="file" name="pict" /></td>
			</tr>
			<tr>
            
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="add article" /></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>