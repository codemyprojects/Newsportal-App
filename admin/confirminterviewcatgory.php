<?php
//mysql_set_charset('utf8');
require_once("dbconnect.php");
$cid = $_POST['catid'];
$catname=$_POST['catname'];
$catdesc = $_POST['catdesc'];

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
$ppath="images/".$imagename;
//die();
move_uploaded_file($tpath,$ppath);
$sql = "insert into news_category_interview (catid,catname,catdesc,status,image) values (null,'$catname','$catdesc',1,'$imagename
')";

$respage = executequery($sql);
//mysql_client_encoding($respage);
//$str = mb_convert_encoding($respage, 'UTF8_bin');

header("location:manageinterviewnews.php?msg=page added successfully");}?>