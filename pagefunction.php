<?php
function getPageContentById($pid) {
	$sql = "select * from news_pages where pid='$pid'";
	$res = executequery($sql);
	$data = mysql_fetch_assoc($res);
	return $data;
}
?>