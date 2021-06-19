<?php
session_start();
if(!isset($_SESSION['uname']) && !isset($_SESSION['client']) && $_SESSION['client']!="newssite") {
	header("location:index.php");
}
require_once("dbconnect.php");
?>
<?php $aid=$_GET['aid']; 
	  $sql1 = "select * from news_articles where aid='$aid'";
	  $res1=executequery($sql1);
	  $data1=mysql_fetch_assoc($res1);
	 // $catid=$data1['catid'];
		//$sql2 = "select * from 2pm_category where catid='$catid'";
		//$res2 = executequery($sql2);
		//$data2 = mysql_fetch_assoc($res2);
		
		
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
	<form name="frmpage" method="post"  action="updatearticles.php">
    <input type="hidden" name="aid" value="<?php echo $aid; ?>" />
		<h2>Edit Article</h2>
		<table>
        
			<tr>
				<td>Select Category</td>
				<td>
                 <?php
				$sql = "select * from news_category";
				$resppage = executequery($sql);
				?>
				<select name="catid">
				<option value="0">select</option>
               
			    <?php while($datacategory = mysql_fetch_assoc($resppage)){
				?>
				<option value="<?php echo $datacategory['catid'];?>"<?php if($data1['catid']==$datacategory['catid']){echo "selected=selected"; }?>><?php echo $datacategory['catname'];?></option><?php }?>
				</select>
				
				</td>
			</tr>
			<tr>
				<td>Article Title </td>
				<td><input type="text" name="atitle" value="<?php echo $data1['atitle'];?>"/></td>
			</tr>
			<tr>
				<td>Article Description</td>
				<td><textarea name="adesc" rows="4" cols="25" ><?php echo $data1['adesc'];?></textarea></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" name="submit" value="Update article" /></td>
			</tr>
		</table>
	</form>
	</div>
	<div class="clear"></div>
</div>
</body>
</html>