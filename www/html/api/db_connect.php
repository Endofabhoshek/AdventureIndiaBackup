
<?php
class DB_CONNECT {
 
    function __construct() {
        $this->connect();
    }

    function __destruct() {
        $this->close();
    }
 
    function connect() {
        // import database connection variables
        require_once __DIR__ . '/db_config.php';
 
        // Connecting to mysql database
        $con = mysqli_connect(DB_SERVER, DB_USER, DB_PASSWORD) or die(mysql_error());
 
        // Selecing database
        $db = mysqli_select_db($con,DB_DATABASE) or die(mysql_error()) or die(mysql_error());
 
        // returing connection cursor
        return $con;
    }
 
    /**
     * Function to close db connection
     */
    function close() {
        // closing db connection
        mysqli_close($this->connect());
    }
} 
?>