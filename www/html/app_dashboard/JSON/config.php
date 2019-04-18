<?php
$servername = "localhost";
$username = "abhishek";
$password = "123456";
$dbname = "trekkerguide";
/////////////////////////////////////////////connection .///////////////////////////////////////////
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$serveradd='http://'.$_SERVER['SERVER_NAME'].'/app_dashoard/';

define('DB_USERNAME','abhishek');
 define('DB_PASSWORD','123456');
 define('DB_NAME','trekkerguide');
 define('DB_HOST','localhost');
