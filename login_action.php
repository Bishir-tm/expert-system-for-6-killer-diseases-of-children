<?php
session_start();
include 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $username = trim($_POST['username']);
    $password = trim($_POST['password']);

    // Fetch user from database
    $stmt = $conn->prepare("SELECT id, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();
    
    if ($stmt->num_rows > 0) {
        $stmt->bind_result($userId, $hashedPassword);
        $stmt->fetch();

        // Verify the password
        if (password_verify($password, $hashedPassword)) {
            // Start the session
            $_SESSION['user_id'] = $userId;
            $_SESSION['username'] = $username;
            header("Location: index.php");
        } else {
            header("Location: login.php?error=Invalid+password");

        }
    } else {
        header("Location: login.php?error=Username+not+found.+Please+try+again.");
    }

    $stmt->close();
    $conn->close();
}
?>
