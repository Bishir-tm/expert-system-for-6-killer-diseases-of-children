<?php
session_start();
include 'db.php';

// Ensure user is logged in
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Check if a valid disease_id is provided
if (!isset($_GET['disease_id']) || !is_numeric($_GET['disease_id'])) {
    echo "<div class='alert alert-danger'>Invalid disease selected.</div>";
    exit();
}

$disease_id = $_GET['disease_id'];

// Fetch disease name for the selected disease
$stmt_disease = $conn->prepare("SELECT name FROM diseases WHERE id = ?");
$stmt_disease->bind_param("i", $disease_id);
$stmt_disease->execute();
$stmt_disease->bind_result($disease_name);
$stmt_disease->fetch();
$stmt_disease->close();

if (empty($disease_name)) {
    echo "<div class='alert alert-danger'>Disease not found.</div>";
    exit();
}

// Fetch treatment steps for the selected disease
$stmt_steps = $conn->prepare("SELECT step_order, step_description FROM treatment_steps WHERE disease_id = ? ORDER BY step_order ASC");
$stmt_steps->bind_param("i", $disease_id);
$stmt_steps->execute();
$result_steps = $stmt_steps->get_result();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Treatment Steps for <?php echo htmlspecialchars($disease_name); ?></title>
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
            font-size: 2.5rem;
        }
        .step-card {
            margin-bottom: 20px;
            padding: 20px;
            border-left: 5px solid #007bff;
            background-color: #ffffff;
        }
        .step-number {
            font-weight: bold;
            color: #007bff;
        }
    </style>
</head>
<body>

    <?php include 'navbar.php'; ?>

    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Treatment Steps for <?php echo htmlspecialchars($disease_name); ?></h1>
    </div>

    <!-- Treatment Steps Section -->
    <div class="container my-5">
        <?php if ($result_steps->num_rows > 0): ?>
            <h2 class="text-center mb-4">Follow the steps below:</h2>
            <?php while ($row = $result_steps->fetch_assoc()): ?>
                <div class="step-card shadow-sm">
                    <h4 class="step-number">Step <?php echo $row['step_order']; ?>:</h4>
                    <p><?php echo htmlspecialchars($row['step_description']); ?></p>
                </div>
            <?php endwhile; ?>
        <?php else: ?>
            <div class="alert alert-warning">No treatment steps found for this disease.</div>
        <?php endif; ?>
    </div>

    <?php include './footer.php'; ?>

    <script src="./assets/js/bootstrap.bundle.js"></script>

</body>
</html>

<?php
$stmt_steps->close();
$conn->close();
?>
