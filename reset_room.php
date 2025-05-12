<?php
session_start();
include 'db.php';

if (!isset($_SESSION['admin_id'])) {
    header("Location: admin_login.php");
    exit;
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['room_id'])) {
    $room_id = intval($_POST['room_id']);

    // Reset the room
    $stmt = $conn->prepare("UPDATE rooms SET is_taken = 0, student_id = NULL WHERE id = ?");
    $stmt->bind_param("i", $room_id);

    if ($stmt->execute()) {
        header("Location: admin_dashboard.php");
    } else {
        echo "Failed to reset room.";
    }
} else {
    echo "Invalid request.";
}
?>
