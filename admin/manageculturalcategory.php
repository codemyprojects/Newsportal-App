<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
$sql = "select * from news_category_cultural";
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
	<p><a href="addculturalcategory.php"><h1>ADD New Category</h1></a></p>
	<table width="100%">
		<tr>
			<th>Category-name</th>
			<th>Status</th>
			<th>Edit</th>
            <th>Delete</th>
		</tr>
	<?php
		while($datacategory = mysql_fetch_assoc($rescat)) {
			$catid=$datacategory['catid']; ?>
		<tr>
			<td><strong><a href="manageprabasharticles.php?catid=<?php echo $datacategory['catid'];?>"><?php echo $datacategory['catname'];?></a></strong></td>
            
			<td>
			<?php $status =  $datacategory['status'];
			if($status==1) {
			?>
			<a href="updatestatus.php?catid=<?php echo $datacategory['catid'];?>&status=0,&page=category">Active</a>
			<?php
			}//end of if
			else {
			?>
			<a href="updatestatus.php?catid=<?php echo $datacategory['catid'];?>&status=1,&page=category">InActive</a>
            <?php
			}
			?>
            
            </td>
			<td><a href="editcuturalcategory.php?catid=<?php echo $catid; ?>">Edit</a></td>
			<td><a href="javascript:void(0)" onclick="chk('deleteculturalcategory.php?catid=<?php echo $catid;?>')">Delete</a></td>
          	</tr>
<?php } ?>
	</table>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>