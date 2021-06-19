<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}

require_once("dbconnect.php");
if(isset($_GET['catid'])) {
	$catid = $_GET['catid'];
	$sql = "select * from  news_entertainment_articles where catid='$catid' order by atitle desc";
}else {
$sql = "select * from  news_entertainment_articles";
}
$respage = executequery($sql);
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
	<p><a href="addentertainmentarticle.php"><h1>Add New Articles</h1></a></p>
	<table width="100%">
		<tr>
			<th>Article Title</th>
			<th>Article description</th>
			<th>Status</th>
			<th>Edit</th>
            <th>Delete</th>
		</tr>
	<?php
		while($dataarticle = mysql_fetch_assoc($respage)) {$aid=$dataarticle['aid']; ?>
		<tr>
			<td><strong><?php echo $dataarticle['atitle'];?></strong></td>
			<td><strong><?php echo $dataarticle['adesc'];?></strong></td>
            
			<td>
			<?php $status = $dataarticle['status'];
			if($status==1) {
			?>
			<a href="updatestatusprabash.php?aid=<?php echo $dataarticle['aid'];?>&status=0,&page=articles">Active</a>
			<?php
			}//end of if
			else {
			?>
			<a href="updatestatus.php?aid=<?php echo $dataarticle['aid'];?>&status=1,&page=articles">InActive</a>
            <?php
			}
			?>
            
            </td>
			<td><a href="editentertainmentarticles.php?aid=<?php echo $dataarticle['aid'];?>">Edit</a></td>
			<td><a href="javascript:void(0)" onclick="chk('deleteprabasharticles.php?aid=<?php echo $aid;?>')">Delete</a></td>
		</tr>
<?php } ?>
	</table>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>