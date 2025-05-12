<?php
session_start();
include 'db.php'; // Connects to your database

$error = "";

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $reg_no = $_POST['reg_no'];
    $password = $_POST['password'];

    // Fetch student
    $stmt = $conn->prepare("SELECT * FROM students WHERE reg_no = ?");
    $stmt->bind_param("s", $reg_no);
    $stmt->execute();
    $result = $stmt->get_result();
    $student = $result->fetch_assoc();

    if ($student && password_verify($password, $student['password'])) {
        $_SESSION['student_id'] = $student['id'];
        $_SESSION['reg_no'] = $student['reg_no'];
        $_SESSION['name'] = $student['name'];
        header("Location: dashboard.php");
        exit;
    } else {
        $error = "Invalid registration number or password.";
    }
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>Student Login - Hostel System</title>
    <link rel="stylesheet" type="text/css" href="css/login.css">
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
        <h2>Student Dashboard</h2>
        <!-- Rest of your content -->
         <h2>Login</h2>
    <?php if ($error): ?>
        <p style="color:red;"><?php echo $error; ?></p>
    <?php endif; ?>
    <form method="post">
        <label>Registration Number:</label><br>
        <input type="text" name="reg_no" required><br><br>
        <label>Password:</label><br>
        <input type="password" name="password" required><br><br>
        <button type="submit"><label>Login</label></button>
    </form>
    </div>
</body>
</html>