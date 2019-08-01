<?php
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$age=$_POST['age'];
$sex=$_POST['sex'];
$hgt=$_POST['hgt'];
$wgt=$_POST['wgt'];
$sym=$_POST['sym'];
$dis=$_POST['dis'];
$days=$_POST['days'];
$bldgrp=$_POST['bldgrp'];
$addr=$_POST['addr'];
$phn=$_POST['phn'];
$conn=mysql_connect("localhost","root","");
mysql_select_db("healtho tracker");
if(!$conn){
	die("Connection failed:".mysqli_connect_error());
}
else{
	$sql="insert into patient (fname,lname,age,sex,hgt,wgt,sym,dis,days,bldgrp,addr,phn) values ('$fname','$lname','$age','$sex','$hgt','$wgt','$sym','$dis','$days','$bldgrp','$addr','$phn')";
	if(!mysql_query($sql)){
		echo "Not Inserted";
	}
	else{
		echo "Inserted Succesfully";
		include 'IPregistration form.html';
	}
}

?>