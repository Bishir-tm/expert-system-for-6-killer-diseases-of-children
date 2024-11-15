<?php 
session_start();
include_once 'db.php'; 

$sql = "SELECT id, name FROM symptoms";
$result = $conn->query($sql);
$symptoms = [];
if ($result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        $symptoms[] = $row;
    }
}

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $selected_symptoms = isset($_POST['symptoms']) ? $_POST['symptoms'] : [];
    $disease_results = [];

    if (!empty($selected_symptoms)) {
        $placeholders = implode(',', array_fill(0, count($selected_symptoms), '?'));
        $sql_diseases = "SELECT DISTINCT diseases.id, diseases.name, diseases.description 
                         FROM diseases 
                         INNER JOIN disease_symptoms ON diseases.id = disease_symptoms.disease_id 
                         WHERE disease_symptoms.symptom_id IN ($placeholders)";
        
        $stmt = $conn->prepare($sql_diseases);
        $stmt->bind_param(str_repeat('i', count($selected_symptoms)), ...$selected_symptoms);
        $stmt->execute();
        $result_diseases = $stmt->get_result();

        while ($row = $result_diseases->fetch_assoc()) {
            $disease_results[] = $row;
        }

        if (!empty($disease_results)) {
            $userId = $_SESSION['user_id']; 
            foreach ($disease_results as $disease) {
                $sql_insert = "INSERT INTO diagnosis_history (user_id, disease_id, symptoms)
                               VALUES (?, ?, ?)";
                $stmt_insert = $conn->prepare($sql_insert);
                $symptoms_json = json_encode($selected_symptoms);
                $stmt_insert->bind_param("iis", $userId, $disease['id'], $symptoms_json);
                $stmt_insert->execute();
            }

            // Redirect with multiple disease IDs
            $disease_ids = implode(',', array_column($disease_results, 'id'));
            header("Location: results.php?disease_ids=$disease_ids");
            exit();
        }
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Diagnose Disease - Expert System</title>
    
    <!-- Bootstrap CSS -->
    <link href="./assets/css/bootstrap.css" rel="stylesheet">

    <!-- Choices.js CSS -->
    <link href="./assets/css/choices.min.css" rel="stylesheet" />
     
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
    </style>

</head>
<body>
    <?php include "./navbar.php" ?>
    
    <!-- Hero Section -->
    <div class="hero-section">
        <h1>Diagnostic Tool</h1>
        <p class="lead">Select symptoms to diagnose the disease and get treatment suggestions.</p>
    </div>

    <!-- Symptom Selection Form -->
    <div class="container mt-5">
        <h2>Select Symptoms</h2>
        <form action="diagnose.php" class="my-3" method="POST">
            <div class="form-group">
                <select multiple id="symptoms" name="symptoms[]" required>
                    <?php foreach ($symptoms as $symptom): ?>
                        <option value="<?php echo $symptom['id']; ?>"><?php echo $symptom['name']; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <button type="submit" class="btn btn-primary m-3 float-right">Diagnose</button>
        </form>

        <?php if ($_SERVER['REQUEST_METHOD'] === 'POST' && empty($selected_symptoms)): ?>
            <div class="alert alert-danger mt-3" role="alert">
                Please select at least one symptom to diagnose.
            </div>
        <?php endif; ?>
    </div>

    <?php include "./footer.php" ?> 

    <!-- Bootstrap JS and dependencies -->
    <script src="./assets/js/bootstrap.bundle.js"></script>

    <!-- Choices.js -->
    <script src="./assets/js/choices.min.js"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const element = document.querySelector('#symptoms');
            const choices = new Choices(element, {
                removeItemButton: true,
                placeholderValue: 'Select symptoms',
                searchPlaceholderValue: 'Search symptoms'
            });
        });
    </script>
</body>
</html>
