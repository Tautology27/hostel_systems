<?php
session_start();
if (!isset($_SESSION['admin_id'])) {
    header("Location: admin_login.php");
    exit;
}

// Prevent back-button access after logout
header("Cache-Control: no-store, no-cache, must-revalidate");
header("Pragma: no-cache");
header("Expires: 0");

include 'db.php';
?>


<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard - Hostel System</title>
    <link rel="stylesheet" type="text/css" href="css/admin_dashboard.css">
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
        <!-- Rest of your content -->
         <h2>Admin Dashboard</h2>

    <h3>Pending Student Applications</h3>
    <table border="1" cellpadding="5">
        <tr>
            <th>Reg No</th>
            <th>Name</th>
            <th>Gender</th>
            <th>Action</th>
        </tr>
        <?php
        $stmt = $conn->prepare("SELECT * FROM students WHERE is_approved = 0");
        $stmt->execute();
        $result = $stmt->get_result();

        while ($row = $result->fetch_assoc()):
        ?>
        <tr>
            <td><?php echo $row['reg_no']; ?></td>
            <td><?php echo $row['name']; ?></td>
            <td><?php echo $row['gender']; ?></td>
            <td>
                <form method="post" action="approve_student.php" style="display:inline;">
                    <input type="hidden" name="student_id" value="<?php echo $row['id']; ?>">
                    <button type="submit">Approve</button>
                </form>
            </td>
        </tr>
        <?php endwhile; ?>
    </table>

    <h3>Room Assignments</h3>
<table border="1" cellpadding="5">
    <tr>
        <th>Room</th>
        <th>Block</th>
        <th>Assigned To</th>
        <th>Action</th>
    </tr>
    <?php
    $stmt = $conn->prepare("SELECT r.id, r.room_no, r.block, s.name 
                            FROM rooms r 
                            LEFT JOIN students s ON r.student_id = s.id
                            WHERE r.is_taken = 1");
    $stmt->execute();
    $result = $stmt->get_result();

    while ($row = $result->fetch_assoc()):
    ?>
    <tr>
        <td><?php echo $row['room_no']; ?></td>
        <td><?php echo $row['block']; ?></td>
        <td><?php echo $row['name']; ?></td>
        <td>
            <form method="post" action="reset_room.php" onsubmit="return confirm('Unassign this room?');">
                <input type="hidden" name="room_id" value="<?php echo $row['id']; ?>">
                <button type="submit" class="btn btn-reset">Reset</button>
            </form>
        </td>
    </tr>
    <?php endwhile; ?>
</table>

<h3>Room Availability Summary</h3>

<table border="1" cellpadding="5">
    <tr>
        <th>Block</th>
        <th>Total Rooms</th>
        <th>Available</th>
        <th>Occupied</th>
    </tr>
    <?php
    $stmt = $conn->prepare("
        SELECT block,
               COUNT(*) as total,
               SUM(CASE WHEN is_taken = 0 THEN 1 ELSE 0 END) AS available,
               SUM(CASE WHEN is_taken = 1 THEN 1 ELSE 0 END) AS occupied
        FROM rooms
        GROUP BY block
    ");
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

    </div>
</body>
</html>
