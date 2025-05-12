<?php
session_start();
include 'db.php';

if (!isset($_SESSION['student_reg_no'])) {
    header("Location: login.php");
    exit;
}

$reg_no = $_SESSION['student_reg_no'];

// Get student info
$stmt = $conn->prepare("SELECT * FROM students WHERE reg_no = ?");
$stmt->bind_param("s", $reg_no);
$stmt->execute();
$student = $stmt->get_result()->fetch_assoc();

if (!$student || !$student['room_id']) {
    header("Location: dashboard.php");
    exit;
}

// Get room info
$stmt = $conn->prepare("SELECT * FROM rooms WHERE id = ?");
$stmt->bind_param("i", $student['room_id']);
$stmt->execute();
$room = $stmt->get_result()->fetch_assoc();

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['send_email'])) {
    $to = $student['email'];
    $subject = "Room Booking Confirmation";
    $message = "Dear " . $student['name'] . ",\n\nYou have successfully booked the following room:\n" .
               "Block: " . $room['block'] . "\nRoom Number: " . $room['room_no'] . "\n\nThank you.";
    $headers = "From: no-reply@musthostel.mw";

    if (mail($to, $subject, $message, $headers)) {
        echo "<script>alert('Email sent to {$to}');</script>";
    } else {
        echo "<script>alert('Failed to send email');</script>";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Room Confirmation</title>
    <link rel="stylesheet" href="css/confirmation.css">
</head>
<body>
    <div class="header">
    <div class="logo">🏨 MUST Hostel System</div>
    <div class="nav-links">
        <?php if (isset($_SESSION['student_reg_no'])): ?>
            <span class="welcome">Hi, <?php echo htmlspecialchars($_SESSION['student_reg_no']); ?></span>
            <a href="logout.php">Logout</a>
        <?php endif; ?>
    </div>
</div>

<div class="container" id="confirmation-section">
    <h2>Room Selection Confirmation</h2>
    <p><strong>Success!</strong> You have successfully booked:</p>
    <ul>
        <li><strong>Block:</strong> <?php echo htmlspecialchars($room['block']); ?></li>
        <li><strong>Room Number:</strong> <?php echo htmlspecialchars($room['room_no']); ?></li>
    </ul>

    <button onclick="window.print()">🖨️ Print Confirmation</button>

    <form method="post" style="margin-top: 20px;">
        <input type="hidden" name="send_email" value="1">
        <button type="submit">📧 Email Confirmation</button>
    </form>

    <p style="margin-top: 20px;">
        <a href="dashboard.php">Go to Dashboard</a>
    </p>
</div>
</body>
</html>
