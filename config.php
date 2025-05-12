<?php
$host = "localhost";
$user = "root";
$pass = ""; // default is empty for XAMPP/WAMP
$db = "hostel_system";

$conn = new mysqli($host, $user, $pass, $db);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
