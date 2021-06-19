<?php
//mysql_set_charset('utf8');
require_once("dbconnect.php");
$cid = $_POST['catid'];
$catname=$_POST['catname'];
$catdesc = $_POST['pdesc'];
$pid=$_POST['pid'];

?>



<?php 
//if(isset($_POST['submit']))
//{
if(isset($_FILES['pict']['name']))
{?>

<?php //print_r($_FILES);
//die();
$imagename=$_FILES['pict']['name'];
$tpath=$_FILES['pict']['tmp_name'];
$ppath="../headerimages/".$imagename;
//die();
move_uploaded_file($tpath,$ppath);

echo $sql = "insert into news_header_category (catitle,catdescription,status,image,pid) values ('$catname','$catdesc',1,'$imagename
','$pid')";
//die();
$respage = executequery($sql);
//mysql_client_encoding($respage);
//$str = mb_convert_encoding($respage, 'UTF8_bin');

header("location:manageheadercategory.php?msg=category to news page added successfully");}?>