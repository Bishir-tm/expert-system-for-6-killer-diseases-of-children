<?php
session_start();
include_once 'db.php'; 

if (!isset($_GET['disease_ids']) || empty($_GET['disease_ids'])) {
    header('Location: diagnose.php');
    exit();
}

$disease_ids = explode(',', $_GET['disease_ids']);
$placeholders = implode(',', array_fill(0, count($disease_ids), '?'));

$sql_diseases = "SELECT id, name, description FROM diseases WHERE id IN ($placeholders)";
$stmt_diseases = $conn->prepare($sql_diseases);
$stmt_diseases->bind_param(str_repeat('i', count($disease_ids)), ...$disease_ids);
$stmt_diseases->execute();
$result_diseases = $stmt_diseases->get_result();

$diseases = [];
while ($row = $result_diseases->fetch_assoc()) {
    $diseases[] = $row;
}

$treatment_steps = [];
if (!empty($diseases)) {
    $sql_steps = "SELECT disease_id, step_order, step_description 
                  FROM treatment_steps 
                  WHERE disease_id IN ($placeholders) 
                  ORDER BY disease_id, step_order ASC";

    $stmt_steps = $conn->prepare($sql_steps);
    $stmt_steps->bind_param(str_repeat('i', count($disease_ids)), ...$disease_ids);
    $stmt_steps->execute();
    $result_steps = $stmt_steps->get_result();

    while ($step = $result_steps->fetch_assoc()) {
        $treatment_steps[$step['disease_id']][] = $step;
    }
}

$conn->close();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diagnosis Results</title>
    <link href="./assets/css/bootstrap.css" rel="stylesheet">
    <style>
        .container { margin-top: 50px; }
        .disease-card { border: 1px solid #ddd; padding: 15px; margin-bottom: 20px; border-radius: 5px; }
        .treatment-steps { margin-top: 10px; }
        .step { background-color: #b8fbfb; padding: 10px; margin-bottom: 5px; border-radius: 5px; }
    </style>
</head>
<body>
    <?php include "./navbar.php"; ?>

    <div class="container">
        <h1>Diagnosis Results</h1>

        <?php if (!empty($diseases)): ?>
            <h2 class="text-danger fw-bolder ">The Patient/Child may Have  May Have: </h2>
            <?php foreach ($diseases as $disease): ?>
                <h2 class="text-danger  border-start px-3 border-2 border-danger fw-bolder "><?php echo htmlspecialchars($disease['name']); ?>!</h2>
            <?php endforeach; ?>
            <p class="lead fs-3">See Treatment Steps Below</p>
            <?php foreach ($diseases as $disease): ?>
                <div class="disease-card">
                    <h3 class="text-danger"><?php echo htmlspecialchars($disease['name']); ?></h3>

                    <p><?php echo htmlspecialchars($disease['description']); ?></p>

                    <div class="treatment-steps">
                        <h5>Treatment Steps:</h5>
                        <?php if (isset($treatment_steps[$disease['id']])): ?>
                            <?php foreach ($treatment_steps[$disease['id']] as $step): ?>
                                <div class="step">
                                    <strong>Step <?php echo $step['step_order']; ?>:</strong>
                                    <p><?php echo htmlspecialchars($step['step_description']); ?></p>
                                </div>
                            <?php endforeach; ?>
                        <?php else: ?>
                            <p>No treatment steps available.</p>
                        <?php endif; ?>
                    </div>
                </div>
            <?php endforeach; ?>
        <?php else: ?>
            <div class="alert alert-warning">
                No matching diseases found.
            </div>
        <?php endif; ?>

        <a href="diagnose.php" class="btn btn-secondary mt-3">Back to Diagnose</a>
    </div>
    <?php include "./footer.php" ?>
</body>
</html>
