<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>MUST Hostel Selection</title>
    <link rel="stylesheet" href="css/home.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">
</head>
<body>
    <div class="hero-section">
        <div class="overlay">
            <header class="top-bar">
                <h1><i class="fas fa-building-columns"></i> MUST Hostel System</h1>
            </header>

            <main class="main-content">
                <div class="intro">
                    <h2>Welcome, MUST Students!</h2>
                    <p>Select your hostel room easily and securely.</p>
                    <div class="button-group">
                        <a href="register.php" class="btn"><i class="fas fa-user-plus"></i> Register</a>
                        <a href="login.php" class="btn"><i class="fas fa-sign-in-alt"></i> Login</a>
                        <a href="admin_login.php" class="btn admin"><i class="fas fa-user-shield"></i> Admin</a>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <section class="card announcements">
        <h3><i class="fas fa-bullhorn"></i> Announcements</h3>
        <ul>
            <li><strong>May 15th, 2025:</strong> Room selection opens.</li>
            <li>New mixed hostel block now available!</li>
            <li>Use your Registration Number to log in after registering.</li>
        </ul>
    </section>

    <section class="testimonials">
        <h3>🎓 What Students Say</h3>
        <div class="testimonial-boxes">
            <div class="testimonial">
                <p>“Super easy and stress-free room booking process!”</p>
                <span>– Amina K., 3rd Year</span>
            </div>
            <div class="testimonial">
                <p>“Loved how clear and fast it was!”</p>
                <span>– James M., 2nd Year</span>
            </div>
        </div>
    </section>

    <footer>
        &copy; <?php echo date('Y'); ?> MUST Hostel System
    </footer>
</body>
</html>
