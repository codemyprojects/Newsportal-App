<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$pid = $_GET['pid'];
$sql="select * from news_pages_headers where pid='$pid'";

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
     <form name="frmpage" method="post" action="updatepage.php" enctype="multipart/form-data">
     <input type="hidden" name="pid" value="<?php echo $pid;?>"/>
     <input type="hidden" name="image" value="<?php echo $datacategory['image'];?>" />
     <input type="hidden" name="status" value="<?php echo $datacategory['status'];?>"/>
		<h2>Edit Page</h2>
		<table>
			<tr>
				<td>Page Title</td>
				<td><input type="text" name="ptitle" value ="<?php echo $datacategory['pagetitle']; ?>"/>      </td>
			</tr>
			
			<tr>
				<td>Page Desc</td>
                
                
                
				<td>
				<?php
				//echo die();
				include("fckeditor/fckeditor.php");
				
				$objfckeditor = new FCKeditor("pdesc");
				$objfckeditor->BasePath = "fckeditor/";
				$objfckeditor->Width=500;
				$objfckeditor->Height=400;
				$objfckeditor->Value=$datacategory['pagedesc'];
				$objfckeditor->Create();
				?>
				</td>
			</tr>
            <tr>
            	<td>Image</td>
                <td><img src="images/<?php echo $datacategory['image']; ?>"  height="100px" width="150"/><input type="file" name="pict" /></td>
         
            </tr>
			
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="update page" /></td>
			</tr>
		</table>
	</form>

	</div>
	<div class="clear"></div>
</div>
</body>
</html>