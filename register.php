<?php
session_start();
include 'db.php';
?>

<!DOCTYPE html>
<html>
<head>
    <title>Register - MUST Hostel System</title>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <div class="header">
        <a href="index.php" class="home-link"><i class="fas fa-home"></i> Home</a>
        <div class="logo">🏨 MUST Hostel System</div>
    </div>

    <div class="form-container">
        <h2>Student Registration</h2>
        <form method="post" action="process_registration.php">
            <label for="reg_no">Registration Number:</label>
            <input type="text" id="reg_no" name="reg_no" required>

            <label for="name">Full Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="gender">Gender:</label>
            <select id="gender" name="gender" required>
                <option value="">Select gender</option>
                <option value="Male">Male</option>
                <option value="Female">Female</option>
            </select>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">Register</button>
        </form>
        <p>Already registered? <a href="login.php">Login here</a></p>
    </div>
</body>
</html>
