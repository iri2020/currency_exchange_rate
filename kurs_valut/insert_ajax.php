<?php

//создание новой записи

include ("connect.php");
include ("function.php");


$id_code=$_GET['id_code'];

$ss = "select * FROM kod_val where id_val=".$id_code;
$qq=mysqli_query($linc,$ss);
$row1 = mysqli_fetch_array($qq);


$curs=get_currency($row1[7],3);

$s1 = "insert INTO currency_page (id_val) VALUES ('".$id_code."')";
$q1=mysqli_query($linc,$s1);

$s = "select *, ".$curs." as curs FROM kod_val where id_val=".$id_code;
$q=mysqli_query($linc,$s);
$n=mysqli_num_rows($q);

$row = mysqli_fetch_array($q);
$arr=array($row);

    echo json_encode($arr);


?>
