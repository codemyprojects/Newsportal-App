<?php

define('HOSTNAME','localhost');

define('DBNAME','mashik_news_db');
mysql_set_charset('utf8');
define('UNAME','root');
define('PWD','');

function dbconnect() {
	 mysql_connect(HOSTNAME,UNAME,PWD);
	 mysql_query ("set character_set_client='utf8'"); 
 	 mysql_query ("set character_set_results='utf8'"); 
	 mysql_query ("set collation_connection='utf8_general_ci'"); 
	 mysql_select_db(DBNAME);
}

function executequery($sql) {
	dbconnect();
	$res = mysql_query($sql);
	return $res;
}
?>
