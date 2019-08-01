<?php
$uname=$_POST['uname'];
$pass=$_POST['pass'];
$conn=mysql_connect("localhost","root","");
mysql_select_db("healtho tracker");
if(!$conn){
	die("Connection failed:".mysqli_connect_error());
}
else{

	$result=mysql_query("select * from ip_login where uname='".$uname."' and pass='".$pass."'") 
	             or die("Failed to query database".mysql_error());
	$row=mysql_fetch_array($result);
    if($row['uname']==$uname && $row['pass']==$pass){
    	include 'IPregistration form.html';
    }
    else{
    	echo "Login Failed";
    	exit();
    }
}
?>