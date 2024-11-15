<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Expert System for Diagnosis and Treatment</title>
    
    <!-- Bootstrap CSS -->
    <link href="./assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS (Optional for extra styling) -->
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Arial', sans-serif;
        }
        .hero-section {
            background-color: #007bff;
            color: white;
            padding: 50px 0;
            text-align: center;
        }
        .hero-section h1 {
            font-size: 3rem;
        }
        .feature-card {
            transition: transform 0.3s ease;
        }
        .feature-card:hover {
            transform: scale(1.05);
        }
        .feature-title {
            font-size: 1.25rem;
            font-weight: bold;
        }
        
    </style>
</head>
<body>
        <?php include "./navbar.php" ?>
    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Welcome to the Expert System</h1>
        <p class="lead">Diagnosis and Treatment for Six Killer Diseases of Children</p>
        <p class="lead">Quickly diagnose and treat common childhood diseases with ease and accuracy.</p>

        <!-- Login/Sign-Up Buttons (if not logged in) -->
        <?php if (!isset($_SESSION['user_id'])): ?>
        <a href="login.php" class="btn btn-light btn-lg">Login</a>
        <a href="register.php" class="btn btn-outline-light btn-lg">Sign Up</a>
        <?php else: ?>
        <a href="diagnose.php" class="btn btn-light btn-lg">Go to Diagnosis</a>
        <?php endif; ?>
    </div>
 <!-- Diseases Section -->
 <div class="container my-5">
        <h2 class="text-center">The Six Killer Diseases of Chilldren Are:</h2>   
        <div class="row">
            <!-- Diphtheria -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Diphtheria</h5>
                        <p class="card-text">A serious bacterial infection that affects the mucous membranes of the throat and nose.</p>
                        <a href="disease.php?id=1" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>

            <!-- Measles -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Measles</h5>
                        <p class="card-text">A contagious viral disease marked by fever, cough, and a distinctive rash.</p>
                        <a href="disease.php?id=2" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>

            <!-- Pertussis (Whooping Cough) -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Pertussis (Whooping Cough)</h5>
                        <p class="card-text">A highly contagious respiratory disease known for uncontrollable coughing fits.</p>
                        <a href="disease.php?id=3" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>

            <!-- Tetanus -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Tetanus</h5>
                        <p class="card-text">A serious bacterial infection causing muscle stiffness and spasms, usually following a wound.</p>
                        <a href="disease.php?id=4" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>

            <!-- Tuberculosis -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Tuberculosis</h5>
                        <p class="card-text">A contagious bacterial infection that primarily affects the lungs.</p>
                        <a href="disease.php?id=5" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>

            <!-- Polio -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Polio</h5>
                        <p class="card-text">A viral disease that can cause paralysis and is highly contagious.</p>
                        <a href="disease.php?id=6" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <hr class="m-5  bg-primary p-1  d-flex">
    
    <!-- About Section -->
    <div class="container text-center my-5">
        <h2>About This Platform</h2>
        <p class="lead">This system is designed to help caregivers and health professionals diagnose and treat common childhood diseases, reducing delays in treatment and improving overall care quality.</p>
    </div>

    <!-- Features Section -->
    <div class="container my-5">
        <div class="row">
            <!-- Diagnostic Tool -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Diagnostic Tool</h5>
                        <p class="card-text">Diagnose children's diseases based on symptoms. Get recommended treatments.</p>
                        <a href="diagnose.php" class="btn btn-primary">Start Diagnosis</a>
                    </div>
                </div>
            </div>

            <!-- Treatment Steps -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Treatment Steps</h5>
                        <p class="card-text">Access treatment guidelines for each disease and follow structured steps for care.</p>
                        <a href="treatment_steps.php" class="btn btn-primary">View Treatment Steps</a>
                    </div>
                </div>
            </div>

            <!-- Symptom Tracker -->
            <div class="col-md-4 mb-4">
                <div class="card feature-card shadow-sm">
                    <div class="card-body">
                        <h5 class="feature-title">Symptom Tracker</h5>
                        <p class="card-text">Track the symptoms of children and get real-time advice on the severity and necessary steps.</p>
                        <a href="symptom_tracker.php" class="btn btn-primary">Track Symptoms</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <!-- Footer -->
        <?php include "./footer.php" ?> 


    <!-- Bootstrap JS and dependencies -->
    <script src="./assets/js/bootstrap.bundle.js" integrity="sha384-pzjw8f+ua7Kw1TIq0B7BvnV+5Jt9Hk7I4+p/5aFgX5v5BGTygpZg7z5Oe1pN+wZo" crossorigin="anonymous"></script>
</body>
</html>
