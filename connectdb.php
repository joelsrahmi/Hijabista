<?php

$open = mysql_connect ("localhost","root","");//open the connection
if(!$open){
		die ("Koneksi ke Database Gagal !");
	}

$connect = mysql_select_db("hijabista");//konek ke db
	if(!$connect){
		die("Koneksi ke Database Gagal!");
	}
?>