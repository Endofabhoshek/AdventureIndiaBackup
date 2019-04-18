<?php
 
$response = array();
 

require_once __DIR__ . '/db_connect.php';
 
// connecting to db
$db = new DB_CONNECT();
$con = $db->connect();
 
// get all products from products table
$result = mysqli_query($con,"SELECT TL.id `id`, TL.name `name`, TL.description `description`
, IP.path `path`, TL.difficulty `difficulty`, 'Test' `test`
FROM treklocations TL join  images_path IP on TL.id = IP.table_id") or die(mysql_error());
 
// check for empty result
if (mysqli_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response = [];
 
    while ($row = mysqli_fetch_array($result)) {
        // temp user array
$response[] = [
            'id'          => $row["id"],
            'name'        => $row["name"],
            'description' => $row["description"],
            'path'        => $row["path"],
            'difficulty'  => $row["difficulty"],
            'test'        => $row["test"]
        ];		

 
        // push single product into final response array
        
    }
    // success

 
    // echoing JSON response
    echo json_encode($response);
} else {
    // no products found

    $response[] = "No treklocations found";
 
    // echo no users JSON
    echo json_encode($response);
}
?>
