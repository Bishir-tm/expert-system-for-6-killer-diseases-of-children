<?php
session_start();
include 'db.php';

// Ensure user is logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Fetch all diseases from the database
$sql = "SELECT id, name FROM diseases";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Treatment Steps</title>
    <link href="./assets/css/bootstrap.css" rel="stylesheet">
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
        .card {
            transition: transform 0.3s ease;
        }
        .card:hover {
            transform: scale(1.05);
        }
        
    </style>
</head>
<body>

    <?php include 'navbar.php'; ?>

    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Treatment Steps for Diseases</h1>
        <p class="lead">Learn the treatment steps for various childhood diseases</p>
    </div>

    <!-- Treatment Steps Section -->
    <div class="container my-5">
        <h2 class="text-center mb-4">Select a Disease to View Treatment Steps</h2>
        
        <div class="row">
            <?php if ($result->num_rows > 0): ?>
                <?php while ($row = $result->fetch_assoc()): ?>
                    <div class="col-md-4 mb-4">
                        <div class="card shadow-sm">
                            <div class="card-body">
                                <h5 class="card-title"><?php echo $row['name']; ?></h5>
                                <p class="card-text">Click below to view detailed treatment steps for this disease.</p>
                                <a href="view_treatment.php?disease_id=<?php echo $row['id']; ?>" class="btn btn-primary">View Treatment Steps</a>
                            </div>
                        </div>
                    </div>
                <?php endwhile; ?>
            <?php else: ?>
                <p>No diseases found in the database.</p>
            <?php endif; ?>
        </div>
    </div>

    <!-- Footer -->
        <?php include "./footer.php" ?> 


    <script src="./assets/js/bootstrap.bundle.js" integrity="sha384-pzjw8f+ua7Kw1TIq0B7BvnV+5Jt9Hk7I4+p/5aFgX5v5BGTygpZg7z5Oe1pN+wZo" crossorigin="anonymous"></script>

</body>
</html>

<?php
$conn->close();
?>
