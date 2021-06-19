<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="2pmsite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$imgsliderid = $_GET['imgsliderid'];
$sql="select * from news_imgage_slider where imgsliderid='$imgsliderid'";
$datagal=executequery($sql);
$datagallery=mysql_fetch_assoc($datagal);
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
     <form name="frmpage" method="post" action="updateslider.php" enctype="multipart/form-data">
     <input type="hidden" name="gid" value="<?php echo $datagallery['imgsliderid'];?>"/>
    	<h2>Edit Gallery</h2>
		<table>
			<tr>
				<td>Image</td>
                
				<td>
                <?php if(!empty($datagallery['imgslidername'])){?>
                <img src="images/slides/<?php echo $datagallery['imgslidername'];?>"  height="200" width="300"/>
                <a href="delete-slider.php?imgsliderid=<?php echo $imgsliderid;?>,&page=gallery">delete image</a>
                <?php }else{?>
                <input type="file" name="pict"/>
                <?php  }?>
                
                </td>
			</tr>
			
			<tr>
				<td>Caption</td>
				<td><input type="text" name="caption" value="<?php echo $datagallery['caption']; ?>"/></td>
			</tr>
			<tr>
				<td>Location</td>
				<td>
             
                <select name="location">
                <option value="select">Select</option>
                <option value="h" <?php if($datagallery['location']=='h'){	echo "selected=selected";} ?> >Home</option>
                <option value="p" <?php if($datagallery['location']=='p'){	echo "selected=selected";}?>>Portfolio</option>
                </select>
     
                </td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="update gallery" /></td>
			</tr>
		</table>
	</form>

	</div>
	<div class="clear"></div>
</div>
</body>
</html>