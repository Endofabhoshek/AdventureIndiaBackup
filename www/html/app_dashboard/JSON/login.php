<?php
include 'config.php';
 
$username=$_POST['username'];
$password=$_POST['password'];


	if(!empty($username) || !empty($email))
	{
		$sqlCheckUser = "SELECT * FROM `user` where `username` = '". $username ."'";
		$sqlCheckUser= mysqli_query($conn, $sqlCheckUser);
		$row_count = mysqli_num_rows($sqlCheckUser);
		if($row_count < 0){
		      $minfo = array("Success"=>'false', "Message"=>'User does not exists!');
		      $jsondata = json_encode($minfo);
		}
		
		$sqlCheckPassword = "SELECT * FROM `user` where `username` = '". $username ."' and  `password` = '". $password ."' ";
		$sqlCheckPassword= mysqli_query($conn, $sqlCheckPassword);
		$row_countPassword = mysqli_num_rows($sqlCheckPassword);
		if($row_countPassword == 0){
		      $minfo = array("Success"=>'false', "Message"=>'Incorrect Username or password!');
		      $jsondata = json_encode($minfo);
		}
		else{
		$sqlCheckPasswordMatch = "SELECT `username`, `email`, `gender`, `id` FROM `user` where `username` = '". $username ."' and  `password` = '". $password ."' ";
		$sqlCheckPasswordMatch= mysqli_query($conn, $sqlCheckPasswordMatch);
		$row_countPasswordMatch = mysqli_num_rows($sqlCheckPasswordMatch);
		$row = mysqli_fetch_row($sqlCheckPasswordMatch);
		$username = $row[0] ;
		$email =  $row[1];
		$gender =  $row[2];
		$id =  $row[3];
		if($row_countPasswordMatch > 0){
			$minfo = array("Success"=>'true', "Message"=>'Successfully Logged In!',"username"=>$username,"email"=>$email,"gender"=>$gender, "id" =>$id);
		      $jsondata = json_encode($minfo);
		}
		      
		}
	}
	else{
		$minfo = array("Success"=>'false', "Message"=>'Incorrect Username or password!');
		      $jsondata = json_encode($minfo);
	}
	print_r($jsondata);
	exit(); 
