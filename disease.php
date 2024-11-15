<?php
// Start the session
session_start();

// Assuming you have an array of diseases or a database to pull disease data from.
$diseases = [
    1 => [
        'name' => 'Diphtheria',
        'description' => 'A serious bacterial infection that affects the mucous membranes of the throat and nose.',
        'treatment' => 'Treatment for diphtheria includes antibiotics and an antitoxin. The goal is to eliminate the bacteria and neutralize the toxin.',
    ],
    2 => [
        'name' => 'Measles',
        'description' => 'A contagious viral disease marked by fever, cough, and a distinctive rash.',
        'treatment' => 'There is no specific antiviral treatment for measles. Care focuses on relieving symptoms, such as fever and cough, and preventing complications.',
    ],
    3 => [
        'name' => 'Pertussis (Whooping Cough)',
        'description' => 'A highly contagious respiratory disease known for uncontrollable coughing fits.',
        'treatment' => 'Pertussis is treated with antibiotics to kill the bacteria. Early treatment is essential to prevent complications.',
    ],
    4 => [
        'name' => 'Tetanus',
        'description' => 'A serious bacterial infection causing muscle stiffness and spasms, usually following a wound.',
        'treatment' => 'Tetanus is treated with a tetanus vaccine, antibiotics, and muscle relaxants. In severe cases, patients may require a ventilator.',
    ],
    5 => [
        'name' => 'Tuberculosis',
        'description' => 'A contagious bacterial infection that primarily affects the lungs.',
        'treatment' => 'Tuberculosis is treated with a combination of antibiotics over a long course, typically 6-9 months.',
    ],
    6 => [
        'name' => 'Polio',
        'description' => 'A viral disease that can cause paralysis and is highly contagious.',
        'treatment' => 'There is no cure for polio, but it can be prevented with vaccination. Treatment focuses on supportive care for the symptoms.',
    ]
];

// Get the disease ID from the URL
$disease_id = isset($_GET['id']) ? intval($_GET['id']) : 1;

// Check if the disease exists in the array
if (array_key_exists($disease_id, $diseases)) {
    $disease = $diseases[$disease_id];
} else {
    // If the disease doesn't exist, show a 404 message
    die('Disease not found.');
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php echo $disease['name']; ?> - Diagnosis and Treatment</title>
    
    <!-- Bootstrap CSS -->
    <link href="./assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom CSS -->
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
        .disease-details {
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <?php include "./navbar.php" ?>

    <!-- Hero Section -->
    <div class="hero-section">
        <h1><?php echo $disease['name']; ?></h1>
        <p class="lead"><?php echo $disease['description']; ?></p>
    </div>

    <!-- Disease Treatment Section -->
    <div class="container disease-details">
        <h2>Treatment</h2>
        <p><?php echo $disease['treatment']; ?></p>

        <!-- Back to Index Button -->
        <a href="index.php" class="btn btn-secondary">Back to Diseases List</a>
    </div>

    <!-- Footer -->
    <?php include "./footer.php" ?> 

    <!-- Bootstrap JS and dependencies -->
    <script src="./assets/js/bootstrap.bundle.js" integrity="sha384-pzjw8f+ua7Kw1TIq0B7BvnV+5Jt9Hk7I4+p/5aFgX5v5BGTygpZg7z5Oe1pN+wZo" crossorigin="anonymous"></script>
</body>
</html>
