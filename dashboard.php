<?php
session_start();
if (!isset($_SESSION['student_id'])) {
    header("Location: login.php");
    exit;
}

// Prevent back-button access after logout
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Pragma: no-cache");
header("Expires: 0");

include 'db.php';

// Fetch student data
$student_id = $_SESSION['student_id'];
$sql = "SELECT * FROM students WHERE id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $student_id);
$stmt->execute();
$result = $stmt->get_result();
$student = $result->fetch_assoc();

$name = $student['name'];
$gender = $student['gender'];
$is_approved = $student['is_approved'];

$stmt = $conn->prepare("SELECT * FROM students WHERE reg_no = ?");
$stmt->bind_param("s", $reg_no);
$stmt->execute();
$student = $stmt->get_result()->fetch_assoc();

// Check if student already selected a room
$room_sql = "SELECT * FROM rooms WHERE student_id = ?";
$room_stmt = $conn->prepare($room_sql);
$room_stmt->bind_param("i", $student_id);
$room_stmt->execute();
$room_result = $room_stmt->get_result();
$room = $room_result->fetch_assoc();
?>

<!DOCTYPE html>
<html>
<head>
    <title>Dashboard - Hostel System</title>
    <link rel="stylesheet" type="text/css" href="css/dashboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <div class="header">
    <a href="index.php" class="home-link"><i class="fas fa-home"></i> Home</a>
    <div class="logo">🏨 MUST Hostel System</div>
    <div class="nav-links">
        <?php if (isset($_SESSION['student_reg_no'])): ?>
            <span class="welcome">Hi, <?php echo htmlspecialchars($_SESSION['student_reg_no']); ?></span>
            <a href="logout.php">Logout</a>
        <?php endif; ?>
    </div>
</div>

    <div class="container">
        <h2>Dashboard</h2>
        <!-- Rest of your content -->
         <h2>Welcome, <?php echo htmlspecialchars($name); ?>!</h2>

    <?php if (!$is_approved): ?>
        <p style="color: orange;">Your hostel application is still pending approval. Please wait.</p>
    <?php elseif ($room): ?>
        <p style="color: green;">You have booked Room <?php echo $room['room_no']; ?> in Block <?php echo $room['block']; ?>.</p>
    <?php else: ?>
        <p style="color: green;">Your application is approved! Please choose a room:</p>

        <form method="post" action="select_room.php">
            <label for="room">Available Rooms:</label>
            <select name="room_id" required>
                <?php
                // Fetch available rooms by gender or mixed block
                $room_query = "SELECT * FROM rooms WHERE is_taken = 0 AND (gender = ? OR gender = 'Both')";
                $room_stmt = $conn->prepare($room_query);
                $room_stmt->bind_param("s", $gender);
                $room_stmt->execute();
                $available_rooms = $room_stmt->get_result();

                while ($r = $available_rooms->fetch_assoc()):
                ?>
                    <option value="<?php echo $r['id']; ?>">
                        Block <?php echo $r['block']; ?> - Room <?php echo $r['room_no']; ?>
                    </option>
                <?php endwhile; ?>
            </select>
            <input type="submit" value="Book Room">
        </form>
    <?php endif; ?>

    <br><a href="logout.php">Logout</a>
    </div>

    <h3>Room Availability Summary</h3>

<table border="1" cellpadding="5">
    <tr>
        <th>Block</th>
        <th>Total Rooms</th>
        <th>Available</th>
        <th>Occupied</th>
    </tr>
    <?php
    // Determine allowed blocks by gender
    $allowed_blocks = ($gender == 'Male') ? ['6A', '6B', 'NewBlock'] : ['8C', '8D', 'NewBlock'];
    $placeholders = implode(',', array_fill(0, count($allowed_blocks), '?'));

    $stmt = $conn->prepare("
        SELECT block,
               COUNT(*) as total,
               SUM(CASE WHEN is_taken = 0 THEN 1 ELSE 0 END) AS available,
               SUM(CASE WHEN is_taken = 1 THEN 1 ELSE 0 END) AS occupied
        FROM rooms
        WHERE block IN ($placeholders)
        GROUP BY block
    ");
    $stmt->bind_param(str_repeat('s', count($allowed_blocks)), ...$allowed_blocks);
    $stmt->execute();
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()):
    ?>
    <tr>
        <td><?php echo htmlspecialchars($row['block']); ?></td>
        <td><?php echo $row['total']; ?></td>
        <td><?php echo $row['available']; ?></td>
        <td><?php echo $row['occupied']; ?></td>
    </tr>
    <?php endwhile; ?>
</table>
</body>
</html>