<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['student_id'])) {
    $student_id = intval($_POST['student_id']);

    $stmt = $conn->prepare("UPDATE students SET is_approved = 1 WHERE id = ?");
    $stmt->bind_param("i", $student_id);

    if ($stmt->execute()) {
        header("Location: admin_dashboard.php");
        exit;
    } else {
        echo "Failed to approve student.";
    }
} else {
    echo "Invalid request.";
}
?>
