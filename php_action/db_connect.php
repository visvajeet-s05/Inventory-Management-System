<?php
$localhost = "127.0.0.1";
$username  = "root";
$password  = "1324";
$dbname    = "stock";

// Create connection
$connect = new mysqli($localhost, $username, $password, $dbname);

// Check connection
if ($connect->connect_error) {
    die("Connection failed: " . $connect->connect_error);
}
// else {
//     echo "Successfully connected";
// }
?>
