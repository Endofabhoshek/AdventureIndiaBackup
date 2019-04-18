<?php
include 'config.php';
 
class login{

    public function __constructor()
    {
        
    }

    public function isUserExits($email, $password)
    {
        $dbObject = new DBController();
        $sql = "SELECT * from  `user` where email = $email";
        $result= mysqli_query($dbObject->connectDB(), $sql);
        if(count($result) > 0){        
            return true;
        }
        return false;        
    }

    public function addNewUser($email, $password){
        $dbObject = new DBController();
        if(!$this->isUserExist($email, $password)){
            $sql = "Insert into user (email, password) values ('$email', '$password')";
            $result = mysqli_query($dbObject->connectDB(), $sql);
            if($result){
                return true;
            }
            return false;		
        }
    }
}





// $sql="SELECT * FROM `app_placesmain` order by id DESC ";
//           $check= mysqli_query($conn, $sql);
// while ($row = mysqli_fetch_array($check,MYSQLI_ASSOC)) {

 
//   $json []= $row;
//   }
  
//   $json1= array("place"=>$json);
// echo json_encode($json1,JSON_UNESCAPED_SLASHES);
 