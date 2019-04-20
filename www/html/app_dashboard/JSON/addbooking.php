<?php 
include 'config.php';

$username=$_POST['username'];
$userid = $_POST['userid'];
$treklocation = $_POST['treklocation'];

	if(!empty($username) || !empty($userid) || !empty($treklocation))
	{
		$sqlCheckUser = "SELECT * FROM `user` where `id` = '".  $userid ."' and `username` = '". $username ."'";
		$sqlCheckUser= mysqli_query($conn, $sqlCheckUser);
		$row_count = mysqli_num_rows($sqlCheckUser);
		if($row_count == 0){
		      $minfo = array("Success"=>'false', "Message"=>'User Doesnt Exists!');
		      $jsondata = json_encode($minfo);
		}
		else{
			$sql="INSERT INTO `bookings` (`username`, `treklocation`,`userid`) VALUES ('".$username."','".$treklocation."',".$userid.")";
			$check= mysqli_query($conn, $sql);
			if($check==True);

			{
				$minfo = array("Success"=>'true', "Message"=>'Trek booked Sucessfully');
			      	$jsondata = json_encode($minfo);
			}

		}

	}
	else{
		$minfo = array("Success"=>'false', "Message"=>'Failed to book!');
		      $jsondata = json_encode($minfo);
	}
	print_r($jsondata);
	exit();
