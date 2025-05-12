<?php
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Sanitize and validate input
    $name = trim($_POST['name']);
    $reg_no = trim($_POST['reg_no']);
    $gender = $_POST['gender'];
    $password = $_POST['password'];

    if (empty($name) || empty($reg_no) || empty($gender) || empty($password)) {
        echo "Please fill in all required fields.";
        exit;
    }

    // Check if reg_no already exists
    $stmt = $conn->prepare("SELECT id FROM students WHERE reg_no = ?");
    $stmt->bind_param("s", $reg_no);
    $stmt->execute();
    $stmt->store_result();

    if ($stmt->num_rows > 0) {
        echo "A student with this registration number already exists.";
        $stmt->close();
        exit;
    }
    $stmt->close();

    // Hash password
    $hashed_password = password_hash($password, PASSWORD_DEFAULT);

    // Insert new student
    $stmt = $conn->prepare("INSERT INTO students (name, reg_no, gender, password) VALUES (?, ?, ?, ?)");
    $stmt->bind_param("ssss", $name, $reg_no, $gender, $hashed_password);

    if ($stmt->execute()) {
        // Redirect to login with success message
        header("Location: login.php?registered=1");
        exit;
    } else {
        echo "Error registering student. Please try again.";
    }

    $stmt->close();
}
?>
