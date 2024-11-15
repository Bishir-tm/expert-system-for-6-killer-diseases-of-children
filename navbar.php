<!-- Navbar -->
 <link href="./assets/css/bootstrap.css" />
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="index.php">Expert System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="index.php">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="diagnose.php">Diagnosis</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="treatment_steps.php">Treatment Steps</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="diagnosis_history.php">Diagnosis History</a>
                </li>
                
                <?php if (isset($_SESSION['user_id'])): ?>
                <li class="nav-item">
                    <a class="nav-link" href="logout.php">Logout</a>
                </li>
                <?php else: ?>
                <li class="nav-item">
                    <a class="nav-link" href="login.php">Login</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="register.php">Sign Up</a>
                </li>
                <?php endif; ?>
            </ul>
        </div>
    </div>
</nav>

<!-- Bootstrap JS and dependencies -->
<script src="./assets/js/bootstrap.bundle.js" integrity="sha384-pzjw8f+ua7Kw1TIq0B7BvnV+5Jt9Hk7I4+p/5aFgX5v5BGTygpZg7z5Oe1pN+wZo" crossorigin="anonymous"></script>
