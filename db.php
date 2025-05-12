<?php
$host = "hostel-db";       // Docker service name
$user = "hostel_user";     // Same as in .env
$pass = "hostelpass";      // Same as in .env
$db   = "hostel_db";       // Same as in .env

$conn = new mysqli("hostel-db", "hostel_user", "hostelpass", "hostel_db");


if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
