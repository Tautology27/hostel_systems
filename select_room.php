<?php
session_start();
include 'db.php';

if (!isset($_SESSION['student_id'])) {
    header("Location: login.php");
    exit;
}

$student_id = $_SESSION['student_id'];

// Handle room selection
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['room_id'])) {
    $room_id = $_POST['room_id'];

    // Check if room is available
    $check = $conn->prepare("SELECT is_taken FROM rooms WHERE id = ?");
    $check->bind_param("i", $room_id);
    $check->execute();
    $check->bind_result($is_taken);
    $check->fetch();
    $check->close();

    if ($is_taken == 0) {
        // Assign room
        $assign = $conn->prepare("UPDATE rooms SET is_taken = 1, student_id = ? WHERE id = ?");
        $assign->bind_param("ii", $student_id, $room_id);
        $assign->execute();

        header("Location: dashboard.php");
        exit;
    } else {
        $error = "Room already taken.";
    }
}

// Fetch available rooms
$gender = $_SESSION['gender'];
$stmt = $conn->prepare("SELECT * FROM rooms WHERE is_taken = 0 AND (gender = ? OR gender = 'Both')");
$stmt->bind_param("s", $gender);
$stmt->execute();
$rooms = $stmt->get_result();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Select Room</title>
    <link rel="stylesheet" href="css/select_room.css">
</head>
<body>
<div class="header">
    <div class="logo">🏨 MUST Hostel System</div>
    <div class="nav-links">
        <a href="dashboard.php">Dashboard</a>
        <a href="logout.php">Logout</a>
    </div>
</div>

<div class="container">
    <h2>Select a Room</h2>

    <?php if (isset($error)): ?>
        <p class="error"><?php echo $error; ?></p>
    <?php endif; ?>

    <form method="post" class="form">
        <label for="room_id">Available Rooms:</label>
        <select name="room_id" required>
            <?php while ($room = $rooms->fetch_assoc()): ?>
                <option value="<?php echo $room['id']; ?>">
                    Block <?php echo $room['block']; ?> - Room <?php echo $room['room_no']; ?>
                </option>
            <?php endwhile; ?>
        </select>
        <button type="submit">Book Room</button>
    </form>
</div>
</body>
</html>
