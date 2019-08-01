<?php
$fname=$_POST['fname'];
$lname=$_POST['lname'];
$email=$_POST['email'];
$phn=$_POST['phn'];
$conn=mysql_connect("localhost","root","");
mysql_select_db("healtho tracker");
if(!$conn){
	die("Connection failed:".mysqli_connect_error());
}
else{
	$sql="insert into appointment(fname,lname,email,phn) values ('$fname','$lname','$email','$phn')";
	if(!mysql_query($sql)){
		echo "Not Inserted";
	}
	else{
		echo "Inserted Succesfully";
		include 'appointment.html';
	}
}

?>