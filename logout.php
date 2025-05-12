<?php
// Start session and clear all session data
session_start();
session_unset();
session_destroy();

// Prevent caching of the login-protected pages after logout
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Pragma: no-cache");
header("Expires: 0");

// Redirect to login page
header("Location: login.php");
exit;
?>
