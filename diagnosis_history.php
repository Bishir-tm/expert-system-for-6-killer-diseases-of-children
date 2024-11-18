<?php
session_start();
include 'db.php';

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

$userId = $_SESSION['user_id'];

// Fetch diagnosis history
$sql = "SELECT dh.diagnosis_date, d.name AS disease_name, d.description, d.treatment, f.follow_up_date, f.reminder_sent
        FROM diagnosis_history dh
        JOIN diseases d ON dh.disease_id = d.id
        LEFT JOIN follow_ups f ON dh.user_id = f.user_id AND dh.disease_id = f.disease_id
        WHERE dh.user_id = ?
        ORDER BY dh.diagnosis_date DESC";

$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $userId);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diagnosis History</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <?php include "navbar.php"; ?>
    <div class="container mt-5">
        <h2 class="mb-4">Diagnosis History</h2>
        <?php if ($result->num_rows > 0): ?>
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>Date</th>
                        <th>Disease</th>
                        <th>Description</th>
                        <th>Treatment</th>
                        <th>Follow-Up Date</th>
                        <th>Follow-Up Status</th>
                    </tr>
                </thead>
                <tbody>
                    <?php while ($row = $result->fetch_assoc()): ?>
                        <tr>
                            <td><?php echo $row['diagnosis_date']; ?></td>
                            <td><?php echo $row['disease_name']; ?></td>
                            <td><?php echo $row['description']; ?></td>
                            <td><?php echo $row['treatment']; ?></td>
                            <td><?php echo isset($row['follow_up_date']) ? $row['follow_up_date'] : 'N/A'; ?></td>
                            <td>
                                <?php 
                                if (isset($row['follow_up_date'])) {
                                    echo $row['reminder_sent'] ? '<span class="badge bg-success">Completed</span>' : '<span class="badge bg-warning">Pending</span>';
                                } else {
                                    echo 'No Follow-Up';
                                }
                                ?>
                            </td>
                        </tr>
                    <?php endwhile; ?>
                </tbody>
            </table>
            <? include "footer.php" ?>
        <?php else: ?>
            <p class="lead">No diagnosis history found. <a href="./diagnose.php" class="btn btn-dark btn-lg">Get Diagnosed</a></p>
        <?php endif; ?>
    </div>
            <?php include "./footer.php" ?> 

</body>
</html>
<?php
$stmt->close();
$conn->close();
?>
