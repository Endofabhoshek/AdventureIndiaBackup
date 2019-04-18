<?php
 
$response = array();
 

require_once __DIR__ . '/db_connect.php';
 
// connecting to db
$db = new DB_CONNECT();
 
// get all products from products table
$result = mysql_query("SELECT TL.id `id`, TL.name `name`, TL.description `description`
, IP.path `path`, TL.difficulty `difficulty`, 'Test' `test`
FROM treklocations TL join  images_path IP on TL.id = IP.table_id") or die(mysql_error());
 
// check for empty result
if (mysql_num_rows($result) > 0) {
    // looping through all results
    // products node
    $response["treklocations"] = array();
 
    while ($row = mysql_fetch_array($result)) {
        // temp user array
        $treklocations = array();
        $treklocations["id"] = $row["id"];
        $treklocations["name"] = $row["name"];
        $treklocations["description"] = $row["description"];
        $treklocations["path"] = $row["path"];
        $treklocations["difficulty"] = $row["difficulty"];
        $treklocations["test"] = $row["test"];

 
        // push single product into final response array
        array_push($response["treklocations"], $treklocations);
    }
    // success
    $response["success"] = 1;
 
    // echoing JSON response
    echo json_encode($response["treklocations"]);
} else {
    // no products found
    $response["success"] = 0;
    $response["message"] = "No treklocations found";
 
    // echo no users JSON
    echo json_encode($response);
}
?>
