<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$catid = $_GET['catid'];
$sql="select * from news_category_entertainment where catid='$catid'";

$datacat=executequery($sql);
$datacategory=mysql_fetch_assoc($datacat);
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
     <form name="frmpage" method="post" action="updateentertainmentcategory.php" enctype="multipart/form-data">
     <input type="hidden" name="catid" value="<?php echo $catid;?>"/>
     <input type="hidden" name="image" value="<?php echo $datacategory['image'];?>" />
     <input type="hidden" name="status" value="<?php echo $datacategory['status'];?>"/>
		<h2>Edit Category</h2>
		<table>
			<tr>
				<td>Cat Name</td>
				<td><input type="text" name="catname" value ="<?php echo $datacategory['catname']; ?>"/>      </td>
			</tr>
			
			<tr>
				<td>Category Desc</td>
				<td><textarea cols="15" rows="5" name="catdesc" ><?php echo $datacategory['catdesc']; ?></textarea></td>
			</tr>
            <tr>
            	<td>Image</td>
                <td><img src="images/<?php echo $datacategory['image']; ?>"  height="100px" width="150"/><input type="file" name="pict" /></td>
         
            </tr>
			
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="update category" /></td>
			</tr>
		</table>
	</form>

	</div>
	<div class="clear"></div>
</div>
</body>
</html>