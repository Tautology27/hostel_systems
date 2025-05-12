<?php
session_start();
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $stmt = $conn->prepare("SELECT * FROM admins WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $admin = $stmt->get_result()->fetch_assoc();

    if ($admin && password_verify($password, $admin['password'])) {
        $_SESSION['admin_id'] = $admin['id'];
        header("Location: admin_dashboard.php");
        exit;
    } else {
        $error = "Invalid login credentials.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Login</title>
    <link rel="stylesheet" type="text/css" href="css/admin.css">
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
        <h2>Admin Dashboard</h2>
        <!-- Rest of your content -->
         <h2>Admin Login</h2>
    <?php if (isset($error)) echo "<p style='color:red;'>$error</p>"; ?>
    <form method="post">
        Username: <input type="text" name="username" required><br><br>
        Password: <input type="password" name="password" required><br><br>
        <button type="submit">Login</button>
    </form>
    </div>
</body>
</html>
