<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$sql = "select * from news_pages_headers";
$rescat = executequery($sql);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Chhargongma mashik patrika</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
<script type="text/javascript">
function chk(lnk) {
	//alert(lnk);
	if(confirm("are you sure you want to delete")) {
		window.location = lnk;
	}
}
</script>
</head>

<body>
<div class="wrapper">
	<div class="sidebar">
	<?php include("sidebar.php");?>
	</div>
	<div class="content">
<form name="frmpage" method="post" enctype="multipart/form-data" action="confirmheadercategory.php">
		<input type="hidden" name="catid" value="" />
        <h2>Add New Category</h2>
		<table>
          <tr><td>Choose News Page</td><td><select name="pid"><?php while($data=mysql_fetch_assoc($rescat)){print_r($data);?><option value="<?php echo $data['pid']; ?>"><?php echo $data['pagetitle'];?></option><?php }?></select></td></tr>
			
			<tr>
				<td>Category Name</td>
				<td><input type="text" name="catname" value="" /></td>
			</tr>
			<tr>
				<td>Category Description</td>
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
				<td colspan="2"><input type="submit" name="submit" value="add Category" /></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>