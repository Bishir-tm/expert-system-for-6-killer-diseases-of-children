<?php
session_start();
include 'db.php';

// Fetch symptoms
$sql = "SELECT * FROM symptoms";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Symptom Checker</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
        <?php include 'navbar.php'; ?>

    <div class="container mt-5">
        <h2>Symptom Checker</h2>
        <form action="diagnose.php" method="POST">
            <div class="mb-3">
                <label for="symptoms" class="form-label">Select Symptoms:</label>
                <select class="form-select" id="symptoms" name="symptoms[]" multiple required>
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <option value="<?php echo $row['id']; ?>"><?php echo $row['name']; ?></option>
                    <?php endwhile; ?>
                </select>
                <small class="text-muted">Hold Ctrl (or Cmd on Mac) to select multiple symptoms.</small>
            </div>
            <button type="submit" class="btn btn-primary">Check Diagnosis</button>
        </form>
    </div>
</body>
</html>
<?php $conn->close(); ?>
