<?php
// Include database connection
include 'db.php';
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./assets/css/bootstrap.css">
</head>
<body>

<?php
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        $username = trim($_POST['username']);
        $email = trim($_POST['email']);
        $password = trim($_POST['password']);

        // Check if email or username already exists
        $stmt_check = $conn->prepare("SELECT id FROM users WHERE email = ? OR username = ?");
        
        if (!$stmt_check) {
            die("Error in statement preparation: " . $conn->error);
        }
        
        $stmt_check->bind_param("ss", $email, $username);
        $stmt_check->execute();
        $stmt_check->store_result();

        if ($stmt_check->num_rows > 0) {
            header("Location: register.php?error=Username+or+email+already+exists");
        } else {
            // Hash the password
            $hashedPassword = password_hash($password, PASSWORD_BCRYPT);

            // Insert user into database
            $stmt = $conn->prepare("INSERT INTO users (username, email, password) VALUES (?, ?, ?)");
            
            if (!$stmt) {
                die("Error in statement preparation: " . $conn->error);
            }

            $stmt->bind_param("sss", $username, $email, $hashedPassword);

            if ($stmt->execute()) {
                echo "<div class='m-5 text-center alert alert-success'>Registration successful! You can now <a href='login.php' class='btn btn-primary'>login</a>.</div>";
            } else {
                echo "<div class='m-5 text-center alert alert-danger'>Error: Unable to register user. Please try again later.</div>";
            }

            $stmt->close();
        }

        $stmt_check->close();
        $conn->close();
    }

?>
</body>
</html>