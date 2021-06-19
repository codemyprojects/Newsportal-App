<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}
require_once("dbconnect.php");
$sql="select * from news_imgage_slider";
$res=executequery($sql);
//$sql = "select * from 2pm_gallery order by location";
//$resgal = executequery($sql);
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
	<p><a href="addsliderimage.php"><h1>Add New Image</h1></a></p>
	<table width="100%">
		<tr>
			<th>Image</th>
			<th>Location</th>
			<th>Status</th>
			<th>Edit</th>
            <th>Delete</th>
		</tr>
	  <?php while($datagal=mysql_fetch_assoc($res)){$imgsliderid=$datagal['imgsliderid'];?>
		<tr>  
		  
			<td >
		
			<img src="images/slides/<?php echo $datagal['imgslidername'];?>" width="100" height="75" /><br />
		    </td>
			<td><?php 
			if($datagal['location']=='h') 
			{echo "home";
			}
			 else 
			 {
				 echo "portfolio";
			 }?>
            </td>
			<td>
			<?php $status =  $datagal['status'];
			if($status==1) {
			?>
			<a href="updatestatus.php?imgsliderid=<?php echo $datagal['imgsliderid'];?>&status=0,&page=gallery">Active</a>
			<?php
			}//end of if
			else {
			?>
			<a href="updatestatus.php?imgsliderid=<?php echo $datagal['imgsliderid'];?>&status=1,&page=gallery">InActive</a>
            <?php
			}
			?>
            
            </td>
			<td><a href="edit-slider-image.php?imgsliderid=<?php echo $imgsliderid;?>">Edit</a></td>
			<td><a href="javascript:void(0)" onclick="chk('delete-slider.php?imgsliderid=<?php echo $imgsliderid;?>')">Delete</a></td>
		</tr>
<?php }?>
	</table>
    
	</div>
	<div class="clear"></div>
</div>
</body>
</html>






























































