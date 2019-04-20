<?php 
include 'config.php';

$username=$_POST['username'];
$email=$_POST['email'];
$password=$_POST['password'];
$gender=$_POST['gender'];

	if(!empty($username) || !empty($email) || !empty($password) || !empty($gender))
	{
		$sqlCheckUser = "SELECT * FROM `user` where `email` = '".  $email ."' OR `username` = '". $username ."'";
		$sqlCheckUser= mysqli_query($conn, $sqlCheckUser);
		$row_count = mysqli_num_rows($sqlCheckUser);
		if($row_count > 0){
		      $minfo = array("Success"=>'false', "Message"=>'User Already Exists!');
		      $jsondata = json_encode($minfo);
		}
		else{
			$sql="INSERT INTO `user` (`username`, `email`,`password`,`gender`) VALUES ('".$username."','".$email."','".$password."',
			'".$gender."')";
			$check= mysqli_query($conn, $sql);
			if($check==True);

			{
				$minfo = array("Success"=>'true', "Message"=>'User Registered Sucessfully');
			      	$jsondata = json_encode($minfo);
			}

		}

	}
	else{
		$minfo = array("Success"=>'false', "Message"=>'User Already Exists!');
		      $jsondata = json_encode($minfo);
	}
	print_r($jsondata);
	exit();
